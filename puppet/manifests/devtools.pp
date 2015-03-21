class devtools {
  package {'git':

    ensure => installed
  }
  package { 'vim':
  ensure => present,
}
service { 'iptables':		
-    ensure => stopped		
-  }

}

