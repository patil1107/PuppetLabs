class apache {

file {'/tmp/example-ip.sh':                                            # resource type file and filename
     ensure  => present,                                               # make sure it exists
     mode    => '0644',                                                # file permissions
     content => template('apache/test.cfg.erb'),                       # note the ipaddress_eth0 fact
   }

package { 'unzip':
 ensure => present,
}

package { 'mlocate':
 ensure => present,
}

package { 'net-tools':
 ensure => present,
}

package { 'elinks':
 ensure => present,
}

package { 'git':
 ensure => present,
}

package { 'wget':
 ensure => present,
}

package { 'httpd':
 ensure => present,
}

service { 'httpd':
 ensure => running,
 enable => true,
}

file {'/var/www/html/index.html':                                            # resource type file and filename
     ensure  => present,                                                   # make sure it exists
     mode    => '0644',                                                    # file permissions
     content => template('apache/index.html.erb'),                         # note the ipaddress_eth0 fact
   }

}

