Vagrant.configure("2") do |config|
  config.vm.box = "lucid32"

  config.vm.box_url = "http://files.vagrantup.com/lucid32.box"

  config.vm.network :forwarded_port, guest: 8888, host: 8080

  # Uncomment the line below to sync a folder from the guest os to
  # the host os, the first argument is the folder on the host os
  # relative to the Vagrantfile, the second argument is the folder
  # on the guest os relative to root directory.
  # Please see the official docs for more info:
  # http://docs.vagrantup.com/v2/synced-folders

  # config.vm.synced_folder "shared/", "/shared"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "chef/cookbooks"
    chef.roles_path = "chef/roles"
    chef.data_bags_path = "chef/data_bags"

    chef.add_recipe "apt"
    chef.add_recipe "build-essential"
    chef.add_recipe "git"
    chef.add_recipe "nodejs"
    chef.add_recipe "yeoman-custom"
    chef.add_recipe "mongo-custom"
  end
end