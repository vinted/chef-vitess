# vitess CHANGELOG

This file is used to list changes made in each version of the vitess cookbook.

# 0.1.0

Initial release.

# 2.0.0

- [CHANGE] Added support for ec34ce1 (2019-10-24) release
- [CHANGE] Replaced mysql flavour to percona57. this version was used in test env.
- [CHANGE] Removed .generate - vitess uses hash releases instead of version based, so there is no point to keep version based .generate scripts

# 3.0.0

- [CHANGE] Added support for df54e56 (2020-01-23) release
- [CHANGE] `web_dir` for vtctld deprecated

# 4.0.0

- [CHANGE] Default topology changed to etcd
- [CHANGE] Topology configuration moved to global attributes
- [FEATURE] Added etcd tests

# 4.1.0

- [CHANGE] Added support for 041757f (2020-01-30) release

# 4.2.0

- [CHANGE] Fix incompatible command arguments for artifacts  (2020-02-19) release

# 4.3.0

- [CHANGE] Added support for 9fe7fd3 (2020-05-20) release
- [CHANGE] Some deprecated flags are removed


# 4.3.1
- [CHANGE] Added support for 25db221 (2020-05-14) release (minor patch)

# 4.3.2
- [CHANGE] Added support for 41c356e (2020-06-04) release (minor patch)
- [FIX] my.cnf missing `[mysqld]`

# 4.3.3
- [FIX] `finalize_external_reparent_timeout` is no longer used with vttablet

# 4.3.4
- [FIX] `schema_swap_admin_query_timeout`, `schema_swap_backup_concurrency`, `schema_swap_delay_between_errors`, `schema_swap_reparent_timeout` are no longer used with vtctld

# 4.4.0
- [FEATURE] base resource now includes `init_dbsql_sql_postfix` to enable having multiple `init_db.sql` files

# 4.5.0
- [CHANGE] Removed old 6.0 releases. Added support for afe46d8 (2020-06-10) release with fixed autocommit

# 4.6.0
- [CHANGE] Removed old 6.0 releases. Added support for bbfe181 (2020-06-25) release

# 4.7.0
- [CHANGE] Removed old 6.0 releases. Added support for b3294e8 (2020-18-17) release with 7.0.0 vitess

# 4.8.0
- [CHANGE] Added support for 40ee160 (2020-09-22) release with pre 7.0.2 vitess
- [CHANGE] Switch default release to 40ee160
- [CHANGE] `grpc_server_keepalive_enforcement_policy_min_time` default changed

# 4.9.0
- [CHANGE] Added support for c02b7d5 (2020-09-24) release with 7.0.2 vitess
- [CHANGE] Switch default release to c02b7d5

# 4.10.0
- [CHANGE] Use `exec` in service bash wrapper
- [CHANGE] Lock json gem to v2.4.1

# 4.11.0
- [CHANGE] bump advertised mysql version to `5.7.21-Vitess`

# 4.12.0
- [CHANGE] Do not perform binary checksum if it is already cached
