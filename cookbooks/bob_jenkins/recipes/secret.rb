file '/var/lib/jenkins/.ssh/id_rsa' do
  content Base64.decode64(
    data_bag_item('jenkins', 'bob2build.pem')['content'])
  mode '0400'
  owner 'jenkins'
  action :nothing
end.run_action(:create)
