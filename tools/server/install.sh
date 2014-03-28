

sudo apt-get -y update

sudo apt-get install -y htop procps git curl







#mongodb

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv 7F0CEB10
sudo echo "deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen" | tee -a /etc/apt/sources.list.d/10gen.list
sudo apt-get -y update
sudo apt-get -y install mongodb-10gen
sudo apt-get install -y mongodb-server







#mariadb
sudo apt-get install -y python-software-properties
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db

sudo add-apt-repository 'deb http://mirror.jmu.edu/pub/mariadb/repo/10.0/ubuntu precise main'

sudo apt-get update
#export DEBIAN_FRONTEND=noninteractive

sudo debconf-set-selections <<< "mariadb-server-10 mysql-server/root_password password root"

sudo debconf-set-selections <<< "mariadb-server-10 mysql-server/root_password_again password root"

sudo DEBIAN_FRONTEND=noninteractive  apt-get install -y mariadb-server



#ruby via rvm

\curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm

rvm requirements
rvm install ruby-1.9.3-p429@tomn --create


sudo apt-get install  libmariadbd-dev 


gem install bundler

bundle install




# jenkins install
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | apt-key add -
echo deb http://pkg.jenkins-ci.org/debian binary/ > sudo /etc/apt/sources.list.d/jenkins.list

sudo apt-get update

sudo apt-get install -y jenkins



# install redis
sudo apt-get update
apt-get install redis-server


# go via gvm
# https://github.com/moovweb/gvm