# Class: elasticsearch::config
#
# This module manages elasticsearch::config
#
class elasticsearch::config {
  include elasticsearch::params
  include elasticsearch::service
  Class['elasticsearch::install'] -> Class['elasticsearch::config']

  file { '/etc/default/elasticsearch':
    content => template('elasticsearch/default.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

  file { '/etc/elasticsearch/elasticsearch.yml':
    content => template('elasticsearch/elasticsearch.yml.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644'
  }

  file { '/etc/elasticsearch/logging.yml':
    source => 'puppet:///modules/elasticsearch/logging.yml',
    owner  => 'root',
    group  => 'root',
    mode   => '0644'
  }

}
