
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
    host     => '%',
    grant    => ['all'],
    sql      => ['/tmp/share/skinny_db.sql']
  }
}
