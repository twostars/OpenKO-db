package config

import (
	"fmt"
	yaml "gopkg.in/yaml.v3"
	"log"
	"os"
	"path/filepath"
)

type KodbConfig struct {
	DatabaseConfig DatabaseConfig `yaml:"databaseConfig"`
}

type DatabaseConfig struct {
	Host     string `yaml:"host"`
	Port     int    `yaml:"port"`
	Instance string `yaml:"instance"`
	User     string `yaml:"user"`
	Password string `yaml:"password"`
	DbName   string `yaml:"dbname"`
}

const (
	configFileName = "config.yaml"
)

var (
	// folder should be overridable via command line arg
	// this path is relative to the working directory; not this source file
	ConfigPath = filepath.Clean("./config/")

	// private - will act as a singleton
	config *KodbConfig
)

// GetConfig returns a singleton instance of KodbConfig containing the application's configuration.
// can throw panic if config cannot be loaded
func GetConfig() *KodbConfig {
	if config == nil {
		loadConfig()
	}

	return config
}

func loadConfig() {
	// Failing to load config is one of the few areas where we'll do a panic instead of error handling
	configPath := filepath.Join(ConfigPath, configFileName)
	absPath, pErr := filepath.Abs(configPath)
	if pErr != nil {
		log.Panic(fmt.Errorf("failed to parse path for config.yaml: %v", pErr))
	}

	fmt.Printf("Attempting to load configuration: %s", absPath)
	yamlFile, err := os.ReadFile(absPath)
	if err != nil {
		log.Panic(fmt.Errorf("failed to read config.yaml: %v", err))
	}

	err = yaml.Unmarshal(yamlFile, &config)
	if err != nil {
		log.Panic(fmt.Errorf("failed to parse config.yaml: %v", err))
	}

	fmt.Printf("Successfully loaded configuration")
}
