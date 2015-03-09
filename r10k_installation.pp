# Configura le r10k
class { 'r10k':
  version           => '1.3.2',
  sources           => {
    'puppet' => {
      'remote'  => 'https://github.com/moutons/coa-puppet_repository.git',
      'basedir' => "${::settings::confdir}/environments",
      'prefix'  => false,
    },
    'hiera' => {
      'remote'  => 'https://github.com/moutons/coa-hiera_repository.git',
      'basedir' => "${::settings::confdir}/hieradata",
      'prefix'  => true,
    }
  },
  purgedirs         => ["${::settings::confdir}/environments"],
  manage_modulepath => false,
}
