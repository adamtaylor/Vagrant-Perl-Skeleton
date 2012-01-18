#!ruby
Vagrant::Config.run do |config|
  config.vm.box = "debian_squeeze_32"

  # Enable the Puppet provisioner
  config.vm.provision :puppet do |puppet|
    puppet.module_path    = "puppet/modules"
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "site.pp"
  end

  config.vm.forward_port("web", 80, 3000)

end
