
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
    sql      => ['/tmp/share/sugar_db_structure.sql','/tmp/share/sugar_basic_data.sql']
  }

}
