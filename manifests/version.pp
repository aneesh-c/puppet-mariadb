class mariadb::version (
  $mariadb_version = undef,
){
  if $::osfamily == 'RedHat' and $mariadb_version != undef {
    if $::operatingsystem == 'RedHat' {
      if $mariadb_version == '10.3' {
        case $::operatingsystemrelease {
          /^6.*/: {
            $header = 'MariaDB 10.3 RedHat repository list - created 2018-06-02 10:24 UTC'
            $baseurl = 'http://yum.mariadb.org/10.3/rhel6-amd64'
          }
          /^7.*/: {
            $header = 'MariaDB 10.3 RedHat repository list - created 2018-06-02 09:55 UTC'
            $baseurl = 'http://yum.mariadb.org/10.3/rhel7-amd64'
          }
          default: {
            $header = 'MariaDB 10.3 RedHat repository list - created 2018-06-02 10:24 UTC'
            $baseurl = 'http://yum.mariadb.org/10.3/rhel6-amd64'
          }
        }
      }
      elsif $mariadb_version == '10.2' {
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
      elsif $mariadb_version == '5.5' {
        case $::operatingsystemrelease {
          /^6.*/: {
            $header = 'MariaDB 5.5 RedHat repository list - created 2018-06-01 10:15 UTC'
            $baseurl = 'http://yum.mariadb.org/5.5/rhel6-amd64'
          }
          default: {
            $header = 'MariaDB 5.5 RedHat repository list - created 2018-06-01 10:15 UTC'
            $baseurl = 'http://yum.mariadb.org/5.5/rhel6-amd64'
          }
        }
      }
    }
    elsif $::operatingsystem == 'CentOS' {
      if $mariadb_version == '10.3' {
        case $::operatingsystemrelease {
          /^6.*/: {
            $header = 'MariaDB 10.3 CentOS repository list - created 2018-06-02 10:10 UTC'
            $baseurl = 'http://yum.mariadb.org/10.3/centos6-amd64'
          }
          /^7.*/: {
            $header = 'MariaDB 10.3 CentOS repository list - created 2018-06-02 09:42 UTC'
            $baseurl = 'http://yum.mariadb.org/10.3/centos7-amd64'
          }
          default: {
            $header = 'MariaDB 10.3 CentOS repository list - created 2018-06-02 10:10 UTC'
            $baseurl = 'http://yum.mariadb.org/10.3/centos6-amd64'
          }
        }
      }
      elsif $mariadb_version == '10.2' {
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
      elsif $mariadb_version == '5.5' {
        case $::operatingsystemrelease {
          /^6.*/: {
            $header = 'MariaDB 5.5 CentOS repository list - created 2018-06-01 10:01 UTC'
            $baseurl = 'http://yum.mariadb.org/5.5/centos6-amd64'
          }
          default: {
            $header = 'MariaDB 5.5 CentOS repository list - created 2018-06-01 10:01 UTC'
            $baseurl = 'http://yum.mariadb.org/5.5/centos6-amd64'
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
      if $mariadb_version == '10.3' {
        case $::operatingsystemrelease {
          /^14.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.3/ubuntu trusty main'" ]
          }
          /^16.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.3/ubuntu xenial main'" ]
          }
          /^18.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8', "add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.3/ubuntu bionic main'" ]
          }
          default: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.3/ubuntu trusty main'" ]
          }
        }
      }
      elsif $mariadb_version == '10.2' {
        case $::operatingsystemrelease {
          /^14.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/ubuntu trusty main'" ]
          }
          /^16.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/ubuntu xenial main'" ]
          }
          /^18.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8', "add-apt-repository 'deb [arch=amd64,arm64,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/ubuntu bionic main'" ]
          }
          default: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/ubuntu trusty main'" ]
          }
        }
      }
      elsif $mariadb_version == '10.1' {
        case $::operatingsystemrelease {
          /^14.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.1/ubuntu trusty main'" ]
          }
          /^16.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.1/ubuntu xenial main'" ]
          }
          default: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.1/ubuntu trusty main'" ]
          }
        }
      }
      elsif $mariadb_version == '10.0' {
        case $::operatingsystemrelease {
          /^14.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu trusty main'" ]
          }
          /^16.*/: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu xenial main'" ]
          }
          default: {
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu trusty main'" ]
          }
        }
      }
    }
    elsif $::operatingsystem == 'Debian' {
      if $mariadb_version == '10.3' {
        case $::operatingsystemrelease {
          /^8.*/: {
            $packagename_repo = 'software-properties-common'
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.3/debian jessie main'" ]
          }
          /^9.*/: {
            $packagename_repo = [ 'software-properties-common', 'dirmngr' ]
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xF1656F24C74CD1D8', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.3/debian stretch main'" ]
          }
          default: {
            $packagename_repo = 'software-properties-common'
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.3/debian jessie main'" ]
          }
        }
      }
      elsif $mariadb_version == '10.2' {
        case $::operatingsystemrelease {
          /^8.*/: {
            $packagename_repo = 'software-properties-common'
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/debian jessie main'" ]
          }
          /^9.*/: {
            $packagename_repo = [ 'software-properties-common', 'dirmngr' ]
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xF1656F24C74CD1D8', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/debian stretch main'" ]
          }
          default: {
            $packagename_repo = 'software-properties-common'
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.2/debian jessie main'" ]
          }
        }
      }
      elsif $mariadb_version == '10.1' {
        case $::operatingsystemrelease {
          /^8.*/: {
            $packagename_repo = 'software-properties-common'
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.1/debian jessie main'" ]
          }
          /^9.*/: {
            $packagename_repo = [ 'software-properties-common', 'dirmngr' ]
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xF1656F24C74CD1D8', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.1/debian stretch main'" ]
          }
          default: {
            $packagename_repo = 'software-properties-common'
            $execute_repo = [ 'apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db', "add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://sgp1.mirrors.digitalocean.com/mariadb/repo/10.1/debian jessie main'" ]
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
