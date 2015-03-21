
define apache::loadmodule () {
     exec { "/usr/sbin/a2enmod $name" :
          unless => "/bin/readlink -e /etc/apache2/mods-enabled/${name}.load",
          notify => Service[apache2]
          requires => Package[apache2]
     }
}

class webserver {
  import 'apache'
  class {'apache': }
  package {['php5', 'php5-mysql', 'php5-gd', 'php5-imap', 'php-apc', 'php5-memcached',  'unzip', 'php5-curl', 'php5-mbstring']: }  
  
  class { 'apache::mod::php':}
  apache::loadmodule{"rewrite":}
  # apache::loadmodule{"cache": }
  
  apache::vhost { 'default':
    priority      => '3',
    port          => '80',
    docroot       => '/var/www/html',
    override      => 'All',
  }
  #php::module { [ 'mysql', 'ldap', 'pdo','mbstring' ]: }
  
  php::ini { '/etc/php5/conf.d/memory_limit.ini':
  memory_limit   => '512M'
}

   
}

class sugarcrm {
  exec { 'copy_config':
    command => "cp /tmp/share/db_config.php /var/www/html/db_config.php",
    path => '/bin'
  }
}

class add_apache_to_vagrant_group {
User<| title == 'apache' |> { groups +> [ "vagrant" ] }
}



