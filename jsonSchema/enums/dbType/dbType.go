package dbType

type DbType uint8

const (
	LOGIN DbType = 0
	GAME  DbType = 1
	LOG   DbType = 2
)

func (this DbType) String() string {
	switch this {
	case LOGIN:
		return "LOGIN"
	case GAME:
		return "GAME"
	case LOG:
		return "LOG"
	}
	return ""
}
