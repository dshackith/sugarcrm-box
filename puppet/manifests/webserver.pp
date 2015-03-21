
define apache::loadmodule () {
     exec { "/usr/sbin/a2enmod $name" :
          unless => "/bin/readlink -e /etc/apache2/mods-enabled/${name}.load",
          notify => Service[apache2],
          require => Package[apache2]
     }
}

class webserver {
  import 'apache'
  class {'apache': }
  package {['php5', 'php5-mysqlnd', 'php5-gd', 'php5-imap', 'php-apc', 'php5-memcached',  'unzip', 'php5-curl', 'php5-mbstring']: }  
  
  class { 'apache::mod::php':}
  apache::loadmodule{"rewrite":}
  # apache::loadmodule{"cache": }
  
  php::ini { '/etc/php5/conf.d/sugarcrm.ini':		
  memory_limit   => '512M',
  max_execution_time => '120',
  post_max_size => '30M',
  upload_max_filesize => '30M',
  realpath_cache_size => '1M',
  serialize_precision => 17,
  short_open_tag => 'On',
  #apc.shm_size =>   '200M',
  #session.use_trans_sid => 0
  }
  
  apache::vhost { 'default':
    priority      => '3',
    port          => '80',
    docroot       => '/var/www/html',
    override      => 'All',
  }
     exec { "mkdir -p /var/lib/php/session":
          path => '/bin',
          notify => Service[apache2],
          require => Package[apache2]
      }
     exec { "chown -R www-data:www-data /var/lib/php/session":
          path => '/bin',
          notify => Service[apache2],
          require => exec["mkdir -p /var/lib/php/session"]
      }
      exec { "chmod -R 775 ${php_sess_save_path}":
          path => '/bin',
          notify => Service[apache2],
          require => exec["mkdir -p /var/lib/php/session"]
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



