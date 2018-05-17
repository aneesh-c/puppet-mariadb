class mariadb::version (
  $mariadb_version = undef,
){
  if $::osfamily == 'RedHat' and $mariadb_version != undef {
    if $::operatingsystem == 'RedHat' {
      if $mariadb_version == '10.2' {
        case $::operatingsystemrelease {
          /^6.*/: {
            $header = 'MariaDB 10.2 RedHat repository list - created 2018-05-11 12:07 UTC'
            $baseurl = 'http://yum.mariadb.org/10.2/rhel6-amd64'
          }
          /^7.*/: {
            $header = 'MariaDB 10.2 RedHat repository list - created 2018-05-11 11:15 UTC'
            $baseurl = 'http://yum.mariadb.org/10.2/rhel7-amd64'
          }
          default: {
            $header = 'MariaDB 10.2 RedHat repository list - created 2018-05-11 12:07 UTC'
            $baseurl = 'http://yum.mariadb.org/10.2/rhel6-amd64'
          }
        }
      }
    }
    elsif $::operatingsystem == 'CentOS' {
      if $mariadb_version == '10.2' {
        case $::operatingsystemrelease {
          /^6.*/: {
            $header = 'MariaDB 10.2 CentOS repository list - created 2018-05-11 11:49 UTC'
            $baseurl = 'http://yum.mariadb.org/10.2/centos6-amd64'
          }
          /^7.*/: {
            $header = 'MariaDB 10.2 CentOS repository list - created 2018-05-11 11:02 UTC'
            $baseurl = 'http://yum.mariadb.org/10.2/centos7-amd64'
          }
          default: {
            $header = 'MariaDB 10.2 CentOS repository list - created 2018-05-11 11:49 UTC'
            $baseurl = 'http://yum.mariadb.org/10.2/centos6-amd64'
          }
        }
      }
    }
    file { '/etc/yum.repos.d/MariaDB.repo':
      content => template('mariadb/repository.erb'),
    }
  }
  elsif $::osfamily == 'Debian' and $mariadb_version != undef {
    if $::operatingsystem == 'Ubuntu' {
      package { 'software-properties-common': ensure => installed }
      if $mariadb_version == '10.2' {
        case $::operatingsystemrelease {
          /^14.*/: {
            exec { 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db':
              path   => '/usr/bin:/usr/sbin:/bin:/sbin',
            }
            exec { "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/ubuntu trusty main'":
              path   => '/usr/bin:/usr/sbin:/bin:/sbin',
            }
          }
          /^16.*/: {
            exec { 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8':
              path   => '/usr/bin:/usr/sbin:/bin:/sbin',
            }
            exec { "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/ubuntu xenial main'":
              path   => '/usr/bin:/usr/sbin:/bin:/sbin',
            }
          }
          default: {
            exec { 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db':
              path   => '/usr/bin:/usr/sbin:/bin:/sbin',
            }
            exec { "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/ubuntu trusty main'":
              path   => '/usr/bin:/usr/sbin:/bin:/sbin',
            }
          }
        }
      }
    }
    elsif $::operatingsystem == 'Debian' {
      if $mariadb_version == '10.2' {
        case $::operatingsystemrelease {
          /^8.*/: {
            package { 'software-properties-common': ensure => installed }
            exec { 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db':
              path   => '/usr/bin:/usr/sbin:/bin:/sbin',
            }
            exec { "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/debian jessie main'":
              path   => '/usr/bin:/usr/sbin:/bin:/sbin',
            }
          }
          /^9.*/: {
            package { [ 'software-properties-common', 'dirmngr' ]: ensure => installed }
            exec { 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xF1656F24C74CD1D8':
              path   => '/usr/bin:/usr/sbin:/bin:/sbin',
            }
            exec { "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/debian stretch main'":
              path   => '/usr/bin:/usr/sbin:/bin:/sbin',
            }
          }
          default: {
            package { 'software-properties-common': ensure => installed }
            exec { 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db':
              path   => '/usr/bin:/usr/sbin:/bin:/sbin',
            }
            exec { "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/debian jessie main'":
              path   => '/usr/bin:/usr/sbin:/bin:/sbin',
            }
          }
        }
      }
    }
    exec { 'apt-get update':
      path   => '/usr/bin:/usr/sbin:/bin:/sbin',
    }
  }
}
