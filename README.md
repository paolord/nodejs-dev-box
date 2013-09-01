# Virtual Machine for learning NodeJS

## Introduction

Use this project to setup a development environment for learning or working on NodeJS.

## Requirements

* [Virtualbox](https://www.virtualbox.org)

* [Vagrant](http://vagrantup.com)

* [Git](http://git-scm.com)

## Getting Started

When you're done installing the requirements, run the following commands:
	
	$ git clone https://github.com/paolord/nodejs-dev-box.git
	$ cd nodejs-dev-box
	$ git submodule init
	$ git submodule update
	$ vagrant up

The first command gets a copy of this project from github and puts it on the nodejs-dev-box folder. The second command goes into that folder. The 3rd and 4th commands gets the files from the [other repos](#from-opscode). And the last command starts the configuration of your development environment(NOTE: this will take a while, since it will also install several components, see [What's in it](#whats-in-it)).

This configuration also forwards port 8080 on the host machine to port 8888 on the virtual machine.

Use this command to access the virtual machine:
	
	$ vagrant ssh

If you're on windows, you may have to use [PuTTY](http://www.putty.org) or other windows SSH clients. Check out this [question](http://stackoverflow.com/questions/9885108/ssh-to-vagrant-box-in-windows) on stackoverflow for more details.

## What's in it

* Git

* NodeJS

* MongoDB

* BONUS: Yeoman 1.0(Check it out [here](http://yeoman.io/))

## Vagrant basics

To start the vm(do this in the nodejs-dev-box folder):
	
	$ vagrant up

To stop on coding and continue later, press Ctrl-D to logout and run:

	$ vagrant suspend
	$ vagrant resume

To shutdown the vm:

	$ vagrant halt

You can always check out the Vagrant docs [here](http://docs.vagrantup.com/v2/)

## Chef Cookbooks

[Chef](http://www.opscode.com/chef/) is an automation platform that automates the installation and configuration of the components inside the vm(see [What's in it](#whats-in-it)). Chef is an example of a Vagrant [provision](http://docs.vagrantup.com/v2/provisioning/index.html). Cookbooks contain the instructions on how to install the components. For more information check out the Vagrant's [docs](http://docs.vagrantup.com/v2/provisioning/chef_solo.html) or Chef's [docs](http://docs.opscode.com/).

### From Opscode

* apt - <https://github.com/opscode-cookbooks/apt>

* build-essential - <https://github.com/opscode-cookbooks/build-essential>

* git - <https://github.com/opscode-cookbooks/git>

### From the Community

* NodeJS - <https://github.com/mdxp/nodejs-cookbook>

### Custom

NOTE: These were made and tested specifically for this platform.

* MongoDB

* Yeoman 