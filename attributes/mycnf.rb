default['vitess']['mysqlctld_mycnf']['default'] = {
  'sql_mode' => 'STRICT_TRANS_TABLES',
  'back_log' => 50,
  'binlog_format' => 'statement',
  'character_set_server' => 'utf8',
  'collation_server' => 'utf8_general_ci',
  'connect_timeout' => 30,
  'datadir' => '{{.DataDir}}',
  'default-storage-engine' => 'innodb',
  'expire_logs_days' => 3,
  'innodb_autoextend_increment' => 64,
  'innodb_buffer_pool_size' => '32M',
  'innodb_data_file_path' => 'ibdata1:10M:autoextend',
  'innodb_data_home_dir' => '{{.InnodbDataHomeDir}}',
  'innodb_file_per_table' => nil,
  'innodb_flush_log_at_trx_commit' => 2,
  'innodb_flush_method' => 'O_DIRECT',
  'innodb_lock_wait_timeout' => 20,
  'innodb_log_buffer_size' => '8M',
  'innodb_log_file_size' => '64M',
  'innodb_log_files_in_group' => 2,
  'innodb_log_group_home_dir' => '{{.InnodbLogGroupHomeDir}}',
  'innodb_max_dirty_pages_pct' => 75,
  'innodb_thread_concurrency' => 20,
  'key_buffer_size' => '32M',
  'log-error' => '{{.ErrorLogPath}}',
  'long_query_time' => 2,
  'max_allowed_packet' => '64M',
  'max_connections' => 500,
  'net_write_timeout' => 60,
  'pid-file' => '{{.PidFile}}',
  'port' => '{{.MysqlPort}}',
  # all db instances should start in read-only mode - once the db is started and
  # fully functional, we'll push it into read-write mode
  'read-only' => nil,
  'read_buffer_size' => '8M',
  'read_rnd_buffer_size' => '8M',
  'server-id' => '{{.ServerID}}',
  'skip-name-resolve' => nil,
  # all db instances should skip the slave startup - that way we can do any
  # additional configuration (like enabling semi-sync) before we connect to
  # the master.
  'skip_slave_start' => nil,
  'slave_net_timeout' => 60,
  'slave_load_tmpdir' => '{{.SlaveLoadTmpDir}}',
  'slow-query-log' => nil,
  'slow-query-log-file' => '{{.SlowLogPath}}',
  'socket' => '{{.SocketFile}}',
  'sort_buffer_size' => '2M',
  'table_open_cache' => 2048,
  'thread_cache_size' => 200,
  'tmpdir' => '{{.TmpDir}}',
  'tmp_table_size' => '32M',
  'transaction-isolation' => 'REPEATABLE-READ'
}

default['vitess']['mysqlctld_mycnf']['master'] = {
  'log-bin' => '{{.BinLogPath}}',
  'log-slave-updates' => nil,
  'sync_binlog' => 1
}

default['vitess']['mysqlctld_mycnf']['replica'] = {
  'relay-log' => '{{.RelayLogPath}}',
  'relay-log-index' => '{{.RelayLogIndexPath}}',
  'relay-log-info-file' => '{{.RelayLogInfoPath}}',
  'master-info-file' => '{{.MasterInfoFile}}',
  'log-slave-updates' => nil
}

default['vitess']['mysqlctld_mycnf']['master_mysql56'] = {
  'gtid_mode' => 'ON',
  'log_bin' => nil,
  'log_slave_updates' => nil,
  'enforce_gtid_consistency' => nil,
  'master_info_repository' => 'TABLE',
  'relay_log_info_repository' => 'TABLE',
  'relay_log_purge' => 1,
  'relay_log_recovery' => 1,
  'innodb_use_native_aio' => 0,
  'plugin-load' => 'rpl_semi_sync_master',
  'rpl_semi_sync_master_timeout' => 1_000_000_000_000_000_000,
  'rpl_semi_sync_master_wait_no_slave' => 1
}
