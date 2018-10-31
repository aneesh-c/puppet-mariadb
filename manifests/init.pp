# == Class: mariadb
#
# === Examples
#
#  class { mariadb:
#    mysqld_bind_address    => '127.0.0.1',
#  }
#
# === Authors
#
# Aneesh C <aneeshchandrasekharan@gmail.com>
#

class mariadb (
  $package_name                   = $::mariadb::params::package_name,
  $configfile                     = $::mariadb::params::configfile,
  $template                       = 'mariadb/configfile.erb',
  $servicename                    = $::mariadb::params::servicename,
  $mysqld_datadir                 = undef,
  $mysqld_socket                  = undef,
  $mysqld_symbolic_links          = undef,
  $mysqld_bind_address            = undef,
  $mysqld_local_infile            = undef,
  $mysqld_user                    = undef,
  $mysqld_pid_file                = undef,
  $mysqld_port                    = undef,
  $mysqld_basedir                 = undef,
  $mysqld_tmpdir                  = undef,
  $mysqld_lc_messages_dir         = undef,
  $mysqld_lc__messages__dir       = undef,
  $mysqld_lc_messages             = undef,
  $mysqld_skip_external_locking   = undef,
  $mysqld_max_connections         = undef,
  $mysqld_connect_timeout         = undef,
  $mysqld_wait_timeout            = undef,
  $mysqld_max_allowed_packet      = undef,
  $mysqld_thread_cache_size       = undef,
  $mysqld_sort_buffer_size        = undef,
  $mysqld_bulk_insert_buffer_size = undef,
  $mysqld_tmp_table_size          = undef,
  $mysqld_max_heap_table_size     = undef,
  $mysqld_myisam_recover_options  = undef,
  $mysqld_key_buffer_size         = undef,
  $mysqld_table_open_cache        = undef,
  $mysqld_myisam_sort_buffer_size = undef,
  $mysqld_concurrent_insert       = undef,
  $mysqld_read_buffer_size        = undef,
  $mysqld_read_rnd_buffer_size    = undef,
  $mysqld_query_cache_limit       = undef,
  $mysqld_query_cache_size        = undef,
  $mysqld_log_warnings            = undef,
  $mysqld_slow_query_log_file     = undef,
  $mysqld_long_query_time         = undef,
  $mysqld_log_slow_verbosity      = undef,
  $mysqld_log_bin                 = undef,
  $mysqld_log_bin_index           = undef,
  $mysqld_expire_logs_days        = undef,
  $mysqld_max_binlog_size         = undef,
  $mysqld_default_storage_engine  = undef,
  $mysqld_innodb_buffer_pool_size = undef,
  $mysqld_innodb_log_buffer_size  = undef,
  $mysqld_innodb_file_per_table   = undef,
  $mysqld_innodb_open_files       = undef,
  $mysqld_innodb_io_capacity      = undef,
  $mysqld_innodb_flush_method     = undef,
  $mysqld_character_set_server    = undef,
  $mysqld_collation_server        = undef,
  $mysqld_log_error               = undef,
  $mysqld_thread_stack            = undef,
  $mysqld_key_buffer              = undef,
  $mysqld_myisam__recover         = undef,
  $mysqld_innodb_log_file_size    = undef,
  $mysqld_myisam_recover          = undef,
  $mysqld_safe_log_error          = undef,
  $mysqld_safe_pid_file           = undef,
  $mysqld_safe_socket             = undef,
  $mysqld_safe_nice               = undef,
  $mysqld_safe_skip_log_error     = undef,
  $mysqld_safe_syslog             = undef,
  $client_port                    = undef,
  $client_socket                  = undef,
  $client_default_character_set   = undef,
  $mysqldump_quick                = undef,
  $mysqldump_quote_names          = undef,
  $mysqldump_max_allowed_packet   = undef,
  $mysql_default_character_set    = undef,
  $isamchk_key_buffer             = undef,
  $includedir                     = [],
) inherits ::mariadb::params {
  if $::osfamily == 'RedHat' {
    package { $package_name: ensure => installed }
  }
  elsif $::osfamily == 'Debian' {
    package { $package_name: 
      ensure => installed, 
      require  => Exec['apt-get update'], 
    }
  }
  file { $configfile:
    require => Package[$package_name],
    backup  => '.backup',
    content => template($template),
  }
  exec { '/bin/mv /etc/mysql/conf.d/mysql.cnf /etc/mysql/conf.d/mysql.cnf.backup':
    onlyif => 'test -f /etc/mysql/conf.d/mysql.cnf',
    path   => ['/usr/bin','/usr/sbin','/bin','/sbin'],
  }
  exec { '/bin/mv /etc/mysql/conf.d/mysqldump.cnf /etc/mysql/conf.d/mysqldump.cnf.backup':
    onlyif => 'test -f /etc/mysql/conf.d/mysqldump.cnf',
    path   => ['/usr/bin','/usr/sbin','/bin','/sbin'],
  }
  if $::osfamily == 'RedHat' {
    service { $servicename:
      require => Package[$package_name],
      enable  => true,
    }
  }
}
