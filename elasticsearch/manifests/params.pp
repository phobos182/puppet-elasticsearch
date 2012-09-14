# Class: elasticsearch::params
# This module manages elasticsearch parameters
#
class elasticsearch::params {

  #_ CLUSTER _#
  $cluster_name = hiera('cluster_name', 'elasticsearch')

  #_ NODE _#
  $node_master                  = hiera('node_master', 'true')
  $node_data                    = hiera('node_data', 'true')
  $node_max_local_storage_nodes = hiera('node_max_local_storage_nodes', '1')

  #_ INDEX _#
  $indicies_memory_index_buffer_size     = hiera('indicies_memory_index_buffer_size', '10%')
  $index_number_of_shards                = hiera('index_number_of_shards', '5')
  $index_number_of_replicas              = hiera('index_number_of_replicas', '1')
  $indices_cache_filter_size             = hiera('indices_cache_filter_size', '20%')
  $index_cache_stats_refresh_interval    = hiera('index_cache_stats_refresh_interval', '5s')
  $index_mapper_dynamic                  = hiera('index_mapper_dynamic', 'true')
  $index_translog_flush_threshold_ops    = hiera('index_translog_flush_threshold_ops', '5000')
  $index_merge_policy_floor_segment      = hiera('index_merge_policy_floor_segment', '2mb')
  $index_merge_policy_max_merged_segment = hiera('index_merge_policy_max_merged_segment', '5gb')
  $index_merge_policy_segments_per_tier  = hiera('index_merge_policy_segments_per_tier', '10')
  $index_term_divisor                    = hiera('index_term_divisor', '128')
  $index_term_index_interval             = hiera('index_term_index_interval', '1')

  #_ PATHS _#
  $path_conf       = hiera('path_conf', '/etc/elasticsearch')
  $path_home       = hiera('path_home', '/usr/share/elasticsearch')
  $path_plugins    = hiera('path_plugins', '/usr/share/elasticsearch/plugins')

  #_ ENVIRONMENT VARIABLES _#
  $es_user           = hiera('es_user', 'elasticsearch')
  $es_group          = hiera('es_group', 'elasticsearch')
  $es_heap_size      = hiera('es_heap_size', '2g')
  $es_heap_newsize   = hiera('es_heap_newsize', '128m')
  $es_max_open_files = hiera('es_max_open_files', '65535')
  $es_java_opts      = hiera_array('es_java_opts', [''])
  $log_dir           = hiera('log_dir', '/var/log/elasticsearch')
  $work_dir          = hiera('work_dir', '/tmp/elasticsearch')

  #_ MEMORY _#
  $bootstrap_mlockall = hiera('bootstrap_mlockall', 'true')

  #_ NETWORK _#
  $transport_tcp_port     = hiera('transport_tcp_port', '9300')
  $transport_tcp_compress = hiera('transport_tcp_compress', 'false')
  $http_port              = hiera('http_port', '9200-9300')
  $http_enabled           = hiera('http_enabled', 'true')

  #_ GATEWAY _#
  $gateway_type                = hiera('gateway_type', 'local')
  $gateway_recover_after_nodes = hiera('gateway_recover_after_nodes', '1')
  $gateway_recovery_after_time = hiera('gateway_recovery_after_time', '5m')
  $gateway_excepted_nodes      = hiera('gateway_excepted_nodes', '2')

  #_ RECOVERY THROTTLING _#
  $cluster_routing_allocation_node_initial_primaries_recoveries = hiera('cluster_routing_allocation_node_initial_primaries_recoveries', '4')
  $cluster_routing_allocation_concurrent_recoveries             = hiera('cluster_routing_allocation_concurrent_recoveries', '2')
  $indices_recovery_max_size_per_sec                            = hiera('indices_recovery_max_size_per_sec', '0')
  $indices_recovery_concurrent_streams                          = hiera('indices_recovery_concurrent_streams', '5')

  #_ DISCOVERY _#
  $discovery_zen_minimum_master_nodes   = hiera('discovery_zen_minimum_master_nodes', '1')
  $discovery_zen_ping_timeout           = hiera('discovery_zen_ping_timeout', '30s')
  $discovery_zen_ping_interval          = hiera('discovery_zen_ping_interval', '1s')
  $discovery_zen_ping_retries           = hiera('discovery_zen_ping_retries', '3')
  $discovery_zen_ping_multicast_enabled = hiera('discovery_zen_ping_multicast_enabled', 'true')
  $discovery_zen_ping_multicast_group   = hiera('discovery_zen_ping_multicast_group', '224.2.2.4')
  $discovery_zen_ping_multicast_port    = hiera('discovery_zen_ping_multicast_port', '54328')
  $discovery_zen_ping_multicast_ttl     = hiera('discovery_zen_ping_multicast_ttl', '3')
  $discovery_zen_ping_unicast_enabled   = hiera('discovery_zen_ping_unicast_enabled', 'false')
  $discovery_zen_ping_unicast_hosts     = hiera_array('discovery_zen_ping_unicast_hosts', ['localhost:9200'])

  #_ SLOW QUERY LOG _#
  $index_search_slowlog_level = hiera('index_search_slowlog_level', 'INFO')

}

