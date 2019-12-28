# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include nginx::service
class nginx::service (
  $service_name  = $nginx::params::service_name,
) inherits nginx::params {
 service { 'nginx_service':
    name    => $service_name,
    ensure  => 'running',
    enable  => true,
    hasrestart  => true,
 }
}
