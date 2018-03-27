# == Class: nfsen::install
#
# Installs requisite packages
#
class nfsen::install {

  assert_private()

  $packages = [
    'libmailtools-perl',
    'librrds-perl',
    'perl',
    'rrdtool',
  ]

  ensure_packages($packages)

}
