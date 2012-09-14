# Class: elasticsearch::install
#
# This module manages elasticsearch installation
#
class elasticsearch::install {

  package { 'elasticsearch':
    ensure => installed
  }

}
