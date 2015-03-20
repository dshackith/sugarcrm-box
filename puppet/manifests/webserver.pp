
$sugarDir = "bsys-sugar-ws"

class webserver {
  import 'apache'
  class {'apache': }
  package {['php5', 'php5-mysql', 'php5-gd', 'php5-imap', 'php-apc', 'php5-memcached',  'unzip', 'php5-curl']: }  
  # class { 'mysql::server': }
  # class { 'mysql': }

  class { 'apache::mod::php':
  }
  apache::vhost { 'default':
    priority      => '3',
    port          => '80',
    docroot       => '/var/www/${sugarDir}',
    override      => 'All',
  }
  php::module { [ 'mysql', 'ldap', 'pdo','mbstring' ]: }

   
}

class sugarcrm {
  exec { 'copy_config':
    command => "cp /vagrant/manifests/sugarcrm/files/db_config.php /var/www/${sugarDir}/db_config.php",
    path => '/bin'
  }
}

class add_apache_to_vagrant_group {
User<| title == 'apache' |> { groups +> [ "vagrant" ] }
}



