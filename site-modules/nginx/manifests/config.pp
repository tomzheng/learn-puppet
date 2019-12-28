# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include nginx::config
class nginx::config (
  $config_path   = $nginx::params::config_path,
  $config_source = $nginx::params::config_source,
) inherits nginx::params {
file { 'nginx_config':
    path    => $config_path,
    source  => $config_source,
    ensure  => 'present',
    notify  => Service['nginx_service'],
 }
}
