# Script om zabbix te installeren 
# Voor versie: Debian 10
# Download script via: wget http://10.0.2.88/linux-zabbix-install.sh

#download
cd /tmp/
wget https://repo.zabbix.com/zabbix/5.4/debian/pool/main/z/zabbix-release/zabbix-release_5.4-1+debian10_all.deb
dpkg -i zabbix-release_5.4-1+debian10_all.deb
apt update

#install
apt install zabbix-agent
systemctl enable zabbix-agent





