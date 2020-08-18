default['vitess']['mycnf']['default'] = {
  'gtid_mode' => 'ON',
  'enforce_gtid_consistency' => 'ON',
  'sql_mode' => 'STRICT_TRANS_TABLES',
  'back_log' => 50,
  'binlog_format' => 'ROW',
  'binlog_row_image' => 'full',
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
  'log-bin' => '{{.BinLogPath}}',
  'relay-log' => '{{.RelayLogPath}}',
  'relay-log-index' => '{{.RelayLogIndexPath}}',
  'lc-messages-dir' => '/usr/share/percona-server/english/',
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
  'slow-query-log' => nil,
  'slow-query-log-file' => '{{.SlowLogPath}}',
  'socket' => '{{.SocketFile}}',
  'sort_buffer_size' => '2M',
  'table_open_cache' => 2048,
  'thread_cache_size' => 200,
  'tmpdir' => '{{.TmpDir}}',
  'tmp_table_size' => '32M',
  'transaction-isolation' => 'REPEATABLE-READ',
  'rpl_semi_sync_master_enabled' => 'ON',
  'rpl_semi_sync_slave_enabled' => 'ON',
  'plugin_dir' => '/usr/lib64/mysql/plugin',
  'plugin-load-add' => 'rpl_semi_sync_master=semisync_master.so;rpl_semi_sync_slave=semisync_slave.so',
  'rpl_semi_sync_master_timeout' => 1_000_000_000_000_000_000,
  'rpl_semi_sync_master_wait_no_slave' => 0
}

default['vitess']['mycnf']['master'] = {
  'gtid_mode' => 'ON',
  'enforce_gtid_consistency' => 'ON',
  'log-slave-updates' => nil,
  'sync_binlog' => 1,
  'rpl_semi_sync_master_enabled' => 'ON',
  'rpl_semi_sync_slave_enabled' => 'ON',
  'plugin-load-add' => 'rpl_semi_sync_master=semisync_master.so;rpl_semi_sync_slave=semisync_slave.so',
  'rpl_semi_sync_master_timeout' => 1_000_000_000_000_000_000,
  'rpl_semi_sync_master_wait_no_slave' => 0,
  'binlog_format' => 'ROW',
  'plugin_dir' => '/usr/lib64/mysql/plugin',
  'binlog_row_image' => 'full'
}

default['vitess']['mycnf']['replica'] = {
  'gtid_mode' => 'ON',
  'enforce_gtid_consistency' => 'ON',
  'master-info-file' => '{{.MasterInfoFile}}',
  'log-slave-updates' => nil,
  'rpl_semi_sync_master_enabled' => 'ON',
  'rpl_semi_sync_slave_enabled' => 'ON',
  'plugin-load-add' => 'rpl_semi_sync_master=semisync_master.so;rpl_semi_sync_slave=semisync_slave.so',
  'rpl_semi_sync_master_timeout' => 1_000_000_000_000_000_000,
  'rpl_semi_sync_master_wait_no_slave' => 0,
  'binlog_format' => 'ROW',
  'plugin_dir' => '/usr/lib64/mysql/plugin',
  'binlog_row_image' => 'full'
}

default['vitess']['mycnf']['master_percona57'] = {
  'gtid_mode' => 'ON',
  'enforce_gtid_consistency' => 'ON',
  'log_slave_updates' => nil,
  'master_info_repository' => 'TABLE',
  'relay_log_info_repository' => 'TABLE',
  'relay_log_purge' => 1,
  'relay_log_recovery' => 1,
  'innodb_use_native_aio' => 0,
  # Semi-sync replication is required for automated unplanned failover
  # (when the master goes away). Here we just load the plugin so it's
  # available if desired, but it's disabled at startup.
  #
  # If the -enable_semi_sync flag is used, VTTablet will enable semi-sync
  # at the proper time when replication is set up, or when masters are
  # promoted or demoted.
  'plugin-load-add' => 'rpl_semi_sync_master=semisync_master.so;rpl_semi_sync_slave=semisync_slave.so',
  'rpl_semi_sync_master_timeout' => 1_000_000_000_000_000_000,
  'rpl_semi_sync_master_wait_no_slave' => 0,
  'rpl_semi_sync_master_enabled' => 'ON',
  'rpl_semi_sync_slave_enabled' => 'ON',
  'binlog_format' => 'ROW',
  'plugin_dir' => '/usr/lib64/mysql/plugin',
  'binlog_row_image' => 'full'
}
