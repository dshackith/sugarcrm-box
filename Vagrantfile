# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file  = "default.pp"
    puppet.module_path = "puppet/modules"
  end
  
  config.vm.forward_port 80, 8888
  config.vm.host_name = 'sugarcrm'
  config.vm.network :hostonly, "192.168.50.4"
  config.vm.share_folder "www", "/var/www/html/", "../bsys-sugar/src/sugar/" , :owner => 'www-data', :group => 'www-data'
  config.vm.share_folder "artifacts", "/tmp/share", "../share"
end
