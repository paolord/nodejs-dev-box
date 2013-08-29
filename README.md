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
	$ vagrant up

The first commands gets a copy of this project from github and puts it on the nodejs-dev-box folder. The second command goes into that folder. And the last command starts the configuration of your development environment(NOTE: this will take a while, since it will also install several components, see [What's in it](#whats-in-it)).

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


