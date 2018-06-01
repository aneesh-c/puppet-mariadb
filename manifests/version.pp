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
      elsif $mariadb_version == '10.1' {
        case $::operatingsystemrelease {
          /^6.*/: {
            $header = 'MariaDB 10.1 RedHat repository list - created 2018-05-31 07:02 UTC'
            $baseurl = 'http://yum.mariadb.org/10.1/rhel6-amd64'
          }
          /^7.*/: {
            $header = 'MariaDB 10.1 RedHat repository list - created 2018-05-31 07:03 UTC'
            $baseurl = 'http://yum.mariadb.org/10.1/rhel7-amd64'
          }
          default: {
            $header = 'MariaDB 10.1 RedHat repository list - created 2018-05-31 07:02 UTC'
            $baseurl = 'http://yum.mariadb.org/10.1/rhel6-amd64'
          }
        }
      }
      elsif $mariadb_version == '10.0' {
        case $::operatingsystemrelease {
          /^6.*/: {
            $header = 'MariaDB 10.0 RedHat repository list - created 2018-05-21 12:11 UTC'
            $baseurl = 'http://yum.mariadb.org/10.0/rhel6-amd64'
          }
          /^7.*/: {
            $header = 'MariaDB 10.0 RedHat repository list - created 2018-05-21 11:36 UTC'
            $baseurl = 'http://yum.mariadb.org/10.0/rhel7-amd64'
          }
          default: {
            $header = 'MariaDB 10.0 RedHat repository list - created 2018-05-21 12:11 UTC'
            $baseurl = 'http://yum.mariadb.org/10.0/rhel6-amd64'
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
      elsif $mariadb_version == '10.1' {
        case $::operatingsystemrelease {
          /^6.*/: {
            $header = 'MariaDB 10.1 CentOS repository list - created 2018-05-31 07:03 UTC'
            $baseurl = 'http://yum.mariadb.org/10.1/centos6-amd64'
          }
          /^7.*/: {
            $header = 'MariaDB 10.1 CentOS repository list - created 2018-05-31 07:05 UTC'
            $baseurl = 'http://yum.mariadb.org/10.1/centos7-amd64'
          }
          default: {
            $header = 'MariaDB 10.1 CentOS repository list - created 2018-05-31 07:03 UTC'
            $baseurl = 'http://yum.mariadb.org/10.1/centos6-amd64'
          }
        }
      }
      elsif $mariadb_version == '10.0' {
        case $::operatingsystemrelease {
          /^6.*/: {
            $header = 'MariaDB 10.0 CentOS repository list - created 2018-05-21 11:40 UTC'
            $baseurl = 'http://yum.mariadb.org/10.0/centos6-amd64'
          }
          /^7.*/: {
            $header = 'MariaDB 10.0 CentOS repository list - created 2018-05-21 11:24 UTC'
            $baseurl = 'http://yum.mariadb.org/10.0/centos7-amd64'
          }
          default: {
            $header = 'MariaDB 10.0 CentOS repository list - created 2018-05-21 11:40 UTC'
            $baseurl = 'http://yum.mariadb.org/10.0/centos6-amd64'
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
      $packagename_repo = 'software-properties-common'
      if $mariadb_version == '10.2' {
        case $::operatingsystemrelease {
          /^14.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/ubuntu trusty main'", 'apt-get update' ]
          }
          /^16.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/ubuntu xenial main'", 'apt-get update' ]
          }
          default: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/ubuntu trusty main'", 'apt-get update' ]
          }
        }
      }
      elsif $mariadb_version == '10.1' {
        case $::operatingsystemrelease {
          /^14.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.1/ubuntu trusty main'", 'apt-get update' ]
          }
          /^16.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.1/ubuntu xenial main'", 'apt-get update' ]
          }
          default: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.1/ubuntu trusty main'", 'apt-get update' ]
          }
        }
      }
      elsif $mariadb_version == '10.0' {
        case $::operatingsystemrelease {
          /^14.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu trusty main'", 'apt-get update' ]
          }
          /^16.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu xenial main'", 'apt-get update' ]
          }
          default: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu trusty main'", 'apt-get update' ]
          }
        }
      }
    }
    elsif $::operatingsystem == 'Debian' {
      if $mariadb_version == '10.2' {
        case $::operatingsystemrelease {
          /^8.*/: {
            $packagename_repo = 'software-properties-common'
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/debian jessie main'", 'apt-get update' ]
          }
          /^9.*/: {
            $packagename_repo = [ 'software-properties-common', 'dirmngr' ]
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xF1656F24C74CD1D8', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/debian stretch main'", 'apt-get update' ]
          }
          default: {
            $packagename_repo = 'software-properties-common'
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/debian jessie main'", 'apt-get update' ]
          }
        }
      }
      elsif $mariadb_version == '10.1' {
        case $::operatingsystemrelease {
          /^8.*/: {
            $packagename_repo = 'software-properties-common'
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.1/debian jessie main'", 'apt-get update' ]
          }
          /^9.*/: {
            $packagename_repo = [ 'software-properties-common', 'dirmngr' ]
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xF1656F24C74CD1D8', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.1/debian stretch main'", 'apt-get update' ]
          }
          default: {
            $packagename_repo = 'software-properties-common'
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.1/debian jessie main'", 'apt-get update' ]
          }
        }
      }
    }
    package { $packagename_repo: ensure => installed }
    exec { $execute_repo:
      path   => '/usr/bin:/usr/sbin:/bin:/sbin',
    }
  }
}
