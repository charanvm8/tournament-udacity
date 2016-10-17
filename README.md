Tournament Results

The game tournament will use the Swiss system for pairing up players in each round: players are not eliminated, and each player will be paired with another player with the same number of wins, or as close as possible.


Getting Started:

You can download the zip file and extract it to get access to the files.

Prerequisities:

VM Virtual Machine
 (or)
 
 Running on your machine

You will need to install postgresql
Install python and pip
Install the python dependencies, pip install -r requirements.txt
Create the schema: psql - f tournament.sql
Run the tests: python tournament_test.py

Installation Instructions:

Installation instructions for the VM & database

VirtualBox
VirtualBox is the software that actually runs the VM. You can download it from virtualbox.org . Install the platform package for your operating system.  You do not need the extension pack or the SDK. You do not need to launch VirtualBox after installing it.
Windows Users - VirtualBox
If you run into difficulties using VirtualBox 5 or higher then we recommend installing an earlier version (4.3.0).
Mac Users
If you encounter a problem running the command "vagrant up" on a Mac (found later in these instructions) the issue may be with the version of VirtualBox installed. Uninstall both VirtualBox and Vagrant and use the latest test build of VirtualBox for Mac found at — https://www.virtualbox.org/wiki/Testbuilds — and then install Vagrant as per the instructions below.
Error message on VirtualBox: "Failed to load VMMR0.r0 (VERR_VMM_SMAP_BUT_AC_CLEAR)."
Error message on Vagrant: "The guest machine entered an invalid state while waiting for it to boot. Valid states are 'starting, running'. The machine is in the 'poweroff' state. Please verify everything is configured properly and try again."
Ubuntu 14.04 Users:
If you are running Ubuntu 14.04, install VirtualBox using the Ubuntu Software Center, not the virtualbox.org web site. Due to a reported bug, installing VirtualBox from the site may uninstall other software you need.

Vagrant
Vagrant is the software that configures the VM and lets you share files between your host computer and the VM's filesystem.  You can download it from vagrantup.com. Install the version for your operating system.
Windows Note: The Installer may ask you to grant network permissions to Vagrant or make a firewall exception. Be sure to allow this.

Login to the vagrant VM: vagrant ssh
Move the shared folder: cd /vagrant
Run the tests: python tournament_test.py




