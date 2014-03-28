
vagrant allows you toCreate and configure lightweight, reproducible, and portable development environments.

you need to install virtualbox or vmware workstation installed your machine

download vagrant for your operating system
http://downloads.vagrantup.com

a Vagrantfile is needed for vagrant to run

in the project root folder you can run vagrant

vagrant up
starts running the virtual machine(ubuntu in our case)

first time when you run it would take upto 30 minutes for slower internet connnection

 downloads the basic ubuntu image from internet, then extract the virtual machine, and create a instance, with networking, shared folders etc, no machine is shown (default)



vagrant ssh
ssh into the newly created virtual machine, logs in via ssh keys so no password is asked, if you want to login from GUI, you can login with login: vagrant and password: vagrant


you can install all the software yourself via sudo apt-get install command


instruction for building the environment for TOM is given in /tools/server folder


to leave the shell enter exit


to shutdown the machines from outside
vagrant halt

if you do 
vagrant up
it would boot the instance again



if you don't want the instance anymore you can destroy it with

vagrant destroy

caution, this will delete all the data inside the VM, so if you need backups, please take it via scp before destroying it

vagrant up
since in the previous command you destroyed the instance, this will create a fresh instance



learn more about managing the configurations and optimization, trouble shooting it at 


http://docs.vagrantup.com/v2/














