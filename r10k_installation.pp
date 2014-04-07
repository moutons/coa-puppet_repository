class { 'r10k':
  version           => '1.1.3',
  sources           => {
    'puppet' => {
      'remote'  => 'https://github.com/cvquesty/coa-puppet_repository.git',
      'basedir' => "${::settings::confdir}/environments",
      'prefix'  => false,
    },
    'hiera' => {
      'remote'  => 'https://github.com/cvquesty/hiera_repository.git',
      'basedir' => "${::settings::confdir}/hieradata",
      'prefix'  => true,
    }
  },
  purgedirs         => ["${::settings::confdir}/environments"],
  manage_modulepath => true,
  modulepath        => "${::settings::confdir}/environments/\$environment/modules:/opt/puppet/share/puppet/modules",
}
