# Install jenkins master with default behaviour
include_recipe 'jenkins::master'

# Install Git plugin
jenkins_plugin 'git' do
  notifies :restart, 'service[jenkins]', :delayed
end
