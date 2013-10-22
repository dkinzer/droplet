from ubuntu:12.04
maintainer David Kinzer

# hhvm
run echo "\n\n#hhvm\ndeb http://dl.hhvm.com/ubuntu precise main\ndeb http://archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list
run apt-get update
run apt-get install -y --force-yes hhvm

# Build drupal
run apt-get install -y php5 git
run apt-get install wget
run wget http://pear.php.net/go-pear.phar
run php go-pear.phar
run pear channel-discover pear.drush.org
run pear install drush/drush
run git clone https://github.com/dkinzer/droplet
run drush --yes make droplet/includes/droplet.make

# Install drupal
run apt-get install -y php5-mysql mysql-client mysql-server
run mysql -u root -p create drupal

