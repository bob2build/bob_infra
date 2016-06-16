Vagrant.configure("2") do |c|
  c.vm.box = "centos/7"
  c.vm.hostname = "default-centos-7"
  c.vm.network(:private_network, {:ip=>"10.1.1.11"})
  c.vm.synced_folder ".", "/vagrant", disabled: true
  c.vm.provider :virtualbox do |p|
    p.gui = false
  end
end
