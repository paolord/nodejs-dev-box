Vagrant.configure("2") do |config|
  config.vm.box = "base"

  config.vm.box_url = "http://domain.com/path/to/above.box"

  config.vm.network :forwarded_port, guest: 8888, host: 8080

end