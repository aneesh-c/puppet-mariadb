# MariaDB Module

## Overview

This module install and configure mariadb database server.

## Usage

Default configuration:

```puppet
include mariadb
```

Custom configuration:

```puppet
class { 'mariadb':
    mysqld_datadir                 => '/var/lib/mysql',
    mysqld_socket                  => '/var/run/mysqld/mysqld.sock',
    mysqld_bind_address            => '127.0.0.1',
    mysqld_local_infile            => '0',
    mysqld_user                    => 'mysql',
    mysqld_pid_file                => '/var/run/mysqld/mysqld.pid',
    mysqld_port                    => '3306',
    mysqld_basedir                 => '/usr',
    mysqld_tmpdir                  => '/tmp',
    mysqld_lc_messages_dir         => '/usr/share/mysql',
    mysqld_lc_messages             => 'en_US',
    mysqld_skip_external_locking   => true,
    mysqld_max_connections         => '100',
    mysqld_connect_timeout         => '5',
    mysqld_wait_timeout            => '600',
    mysqld_max_allowed_packet      => '16M',
    mysqld_thread_cache_size       => '128',
    mysqld_sort_buffer_size        => '4M',
    mysqld_bulk_insert_buffer_size => '16M',
    mysqld_tmp_table_size          => '32M',
    mysqld_max_heap_table_size     => '32M',
    mysqld_myisam_recover_options  => 'BACKUP',
    mysqld_key_buffer_size         => '128M',
    mysqld_table_open_cache        => '400',
    mysqld_myisam_sort_buffer_size => '512M',
    mysqld_concurrent_insert       => '2',
    mysqld_read_buffer_size        => '2M',
    mysqld_read_rnd_buffer_size    => '1M',
    mysqld_query_cache_limit       => '128K',
    mysqld_query_cache_size        => '64M',
    mysqld_log_warnings            => '2',
    mysqld_slow_query_log_file     => '/var/log/mysql/mariadb-slow.log',
    mysqld_long_query_time         => '10',
    mysqld_log_slow_verbosity      => 'query_plan',
    mysqld_log_bin                 => '/var/log/mysql/mariadb-bin',
    mysqld_log_bin_index           => '/var/log/mysql/mariadb-bin.index',
    mysqld_expire_logs_days        => '10',
    mysqld_max_binlog_size         => '100M',
    mysqld_default_storage_engine  => 'InnoDB',
    mysqld_innodb_buffer_pool_size => '256M',
    mysqld_innodb_log_buffer_size  => '8M',
    mysqld_innodb_file_per_table   => '1',
    mysqld_innodb_open_files       => '400',
    mysqld_innodb_io_capacity      => '400',
    mysqld_innodb_flush_method     => 'O_DIRECT',
    mysqld_safe_log_error          => '/var/log/mariadb/mariadb.log',
    mysqld_safe_socket             => '/var/run/mysqld/mysqld.sock',
    mysqld_safe_nice               => '0',
    client_port                    => '3306',
    client_socket                  => '/var/run/mysqld/mysqld.sock',
    mysqldump_quick                => true,
    mysqldump_quote_names          => true,
    mysqldump_max_allowed_packet   => '16M',
    isamchk_key_buffer             => '16M',
    includedir                     => [ '/etc/mysql/conf.d/' ],
}
```

