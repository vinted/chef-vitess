SERVICES = %w[
  mysqlctld0 mysqlctld1 mysqlctld2
  vttablet0 vttablet1 vttablet2
  vtctld vtgate vtworker
]

INIT_DB_SQL_FILES = %w[
  init_dbmysqlctld0.sql init_dbmysqlctld1.sql init_dbmysqlctld2.sql
]
