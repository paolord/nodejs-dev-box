maintainer       "Angelo Paolo Obispo"
maintainer_email "angelopaolo.obispo@gmail.com"
license          "Apache 2.0"
description      "Installs Yeoman on ubuntu"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"
name             "yeoman-custom"
provides         "yeoman-custom"

recipe "yeoman-custom", "Installs yeoman on ubuntu"


%w{ debian ubuntu }.each do |os|
    supports os
end