package main

import (
	"context"
	"flag"
	"fmt"
	"kodb-util/config"
	"kodb-util/jobs/clean"
	"kodb-util/jobs/importDb"
	"log"
)

type Args struct {
	Clean  bool
	Import bool
	// TODO
	//Export bool
}

func (this Args) HasArgs() bool {
	if this.Clean || this.Import {
		return true
	}
	return false
}

func getArgs() (a Args) {
	clean := flag.Bool("clean", false, "Clean drops the databaseConfig.dbname database and removes the knight user")
	importDb := flag.Bool("import", false, "Runs clean and imports OpenKO-db files")
	//exportDb := flag.Bool("export", false, "Export the KN_online database to OpenKO-db files")

	flag.Parse()

	if clean != nil {
		a.Clean = *clean
	}

	if importDb != nil {
		a.Import = *importDb
	}

	// TODO
	//if exportDb != nil {
	//	a.Export = *exportDb
	//}

	return a
}

func main() {
	defer func() {
		// catch-all panic error capture
		if r := recover(); r != nil {
			log.Printf("Recovered from panic: %v", r)
		}
	}()

	fmt.Println("|---------------------------|")
	fmt.Println("| OpenKO Database Utilities |")
	fmt.Println("|---------------------------|")

	args := getArgs()
	if !args.HasArgs() {
		fmt.Println("No arguments provided:")
		flag.Usage()
		return
	}

	// loading config for the first time can throw a panic, so let's do it here
	// uses a singleton pattern, so once loaded from disk it's in memory
	fmt.Print("Loading config...")
	_ = config.GetConfig()
	fmt.Println(" done")

	// Create a stub context for use with our db-ops.  We're not doing anything fancy with it now, but it will give us a
	// few options if we ever desire them (deadlines, cancel funcs, key:val mapping)
	// https://pkg.go.dev/context
	appCtx := context.Background()

	// Run clean if either -clean or -import was called
	if args.Clean || args.Import {
		err := clean.Clean(appCtx)
		if err != nil {
			panic(err)
		}
	}

	if args.Import {
		err := importDb.ImportDb(appCtx)
		if err != nil {
			panic(err)
		}
	}

}
