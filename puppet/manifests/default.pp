
exec { "apt-update":
    command => "/usr/bin/apt-get update"
}

Exec["apt-update"] -> Package <| |>

node sugarcrm {
  import 'devtools'
  import 'webserver'
  import 'db'
  import 'elasticsearch'
  
  include db
  include devtools
  include webserver
  include elasticsearch
}


