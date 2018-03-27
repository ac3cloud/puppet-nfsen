# == Class: nfsen::service
#
# Ensures the nfsen service is running
#
class nfsen::service {

  assert_private()

  file{'/lib/systemd/system/nfsen.service':
    mode   => '0744',
    owner  =>  'root',
    group  => 'root',
    source => 'puppet:///modules/nfsen/lib/systemd/system/nfsen.service'
  } ->

  service { 'nfsen':
    ensure    => 'running',
    hasstatus => false,
    path      => "${::nfsen::basedir}/bin",
    pattern   => "${::nfsen::basedir}/bin/nfsend"
  }

}
