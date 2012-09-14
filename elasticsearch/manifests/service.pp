# Class: elasticsearch
#
# This module manages elasticsearch
#
class elasticsearch::service {
  include elasticsearch::install
  Class['elasticsearch::install'] -> Class['elasticsearch::service']

  service { 'elasticsearch':
    enable     => true,
    hasrestart => false,
    hasstatus  => true
  }

}
