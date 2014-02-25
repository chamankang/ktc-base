name              'ktc-base'
maintainer        'Jesse Nelson'
maintainer_email  'spheromak@gmail.com'
license           'Apache 2'
description       'Base Role Cook'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.2.30'

depends 'chef-client', '>= 3.2.0'
depends 'ktc-chef'
depends 'ktc-git'
depends 'ktc-logging'
depends 'ktc-monitor'
depends 'ktc-package'
depends 'ktc-rsyslog', '>= 0.1.11'
depends 'ktc-ssh'
depends 'ktc-utils'
depends 'ktc-vim'
depends 'ntp'
depends 'ohai'
depends 'omnibus_updater'
depends 'selinux'
depends 'sudo'
depends 'sysctl'
depends 'timezone'
depends 'tmux'
depends 'users'
