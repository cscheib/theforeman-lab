# TheForeman apparently doesn't like puppet 3.7, use version that comes in trusty (3.4.x)
##wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
##dpkg -i puppetlabs-release-trusty.deb

echo "deb http://deb.theforeman.org/ trusty 1.7" > /etc/apt/sources.list.d/foreman.list
echo "deb http://deb.theforeman.org/ plugins 1.7" >> /etc/apt/sources.list.d/foreman.list
wget -q http://deb.theforeman.org/pubkey.gpg -O- | apt-key add -
apt-get update && apt-get -y install foreman-installer

foreman-installer --foreman-admin-password="vagrantlab"
