# vim: set ft=ruby:
site :opscode

metadata
group "ktc" do
  cookbook 'helpers',
    github: 'cloudware-cookbooks/helpers'
  cookbook 'users',
    github: 'cloudware-cookbooks/users'
  cookbook 'ktc-vim',
    github: 'cloudware-cookbooks/ktc-vim'
  cookbook 'ktc-git',
    github: 'cloudware-cookbooks/ktc-git'
  cookbook 'ktc-ssh',
    github: 'cloudware-cookbooks/ktc-ssh'
  # can remove this when upstream yum includes https://github.com/opscode-cookbooks/yum/pull/48
  cookbook 'yum',
    github: 'spheromak/yum',
    branch: 'integration'
  cookbook 'collectd-graphite',
    github: 'cloudware-cookbooks/collectd-graphite',
    branch 'develop'
  cookbook 'ktc-sensu',
    github: 'cloudware-cookbooks/ktc-sensu',
    branch 'develop'
end

group "other" do
  cookbook 'chef-client',
    github: 'opscode-cookbooks/chef-client'
  cookbook 'omnibus_updater',
    github: 'hw-cookbooks/omnibus_updater'
  cookbook 'timezone',
    github: 'secondmarket-cookbooks/timezone'
end

group "integration" do
  cookbook 'chef-solo-search',
    github: 'edelight/chef-solo-search'
end

