
class db {
  import 'mysql'
  class { 'mysql::server':
    config_hash       => {
      'root_password' => 'cleverpassword'
    }
  }
  mysql::db { 'sugarcrm':
    user     => 'sugarcrm',
    password => 'sugarcrm',
    host     => 'localhost',
    grant    => ['all'],
    sql      => ['/tmp/share/sugar_db_structure.sql'']
  }
exec {'import mysql':
  path  => '/usr/bin:/usr/sbin',
  command => 'mysql -u sugarcrm -p sugarcrm -D sugarcrm < /tmp/share/sugar_basic_data.sql',
}
}
