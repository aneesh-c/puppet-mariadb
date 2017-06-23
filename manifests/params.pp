class mariadb::params {
  if $::osfamily == 'RedHat' {
    $configfile = '/etc/my.cnf'
    case $::operatingsystemrelease {
      /^6.*/: {
        $package_name = [ 'MariaDB-server' ]
        $servicename = 'mysql'
      }
      /^7.*/: {
        $package_name = [ 'mariadb-server' ]
        $servicename = 'mariadb'
      }
      default: {
        $package_name = [ 'MariaDB-server' ]
        $servicename = 'mysql'
      }
    }
  }
  elsif $::osfamily == 'Debian' {
    $package_name = [ 'mariadb-server' ]
    $configfile = '/etc/mysql/my.cnf'
  }
}
