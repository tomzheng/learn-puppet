# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include nginx::install
class nginx::install {
  yumrepo { 'company_app_repo':
    enabled  => 1,
    descr    => 'epel repo',
    baseurl  => 'https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch',
    gpgcheck => 0,
  }

  package { 'install_nginx':
    name   => 'nginx',
    ensure => 'present',
  }
}
