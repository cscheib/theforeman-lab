node 'default' {
  notice("Puppet manifest default was run")
}

node 'puppet.lab' {
  host { 'puppet.lab':
    ensure => 'present',
    ip => $::ipaddress_eth1,
    target => '/etc/hosts',
    host_aliases => [ 'puppet' ],
  }
}
