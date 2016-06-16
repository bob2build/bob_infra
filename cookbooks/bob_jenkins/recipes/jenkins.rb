node.set['jenkins']['master']['version'] = '1.658-1.1'
# Install jenkins master with default behaviour
include_recipe 'jenkins::master'

# Install Git plugin
jenkins_plugin 'git' do
  notifies :restart, 'service[jenkins]', :delayed
end

jenkins_plugin 'chef-identity' do
  notifies :restart, 'service[jenkins]', :delayed
end

jenkins_plugin 'rvm' do
  notifies :restart, 'service[jenkins]', :delayed
end
