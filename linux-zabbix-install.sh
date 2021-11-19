# Script om zabbix te installeren 
# Voor versie: Debian 10
# Download script via: wget https://raw.githubusercontent.com/Remandknol/scripts/main/linux-zabbix-install.sh

#download
cd /tmp/
wget -P /tmp/ https://repo.zabbix.com/zabbix/5.4/debian/pool/main/z/zabbix-release/zabbix-release_5.4-1+debian10_all.deb
dpkg -i /tmp/zabbix-release_5.4-1+debian10_all.deb
apt update

#install
apt install zabbix-agent
systemctl enable zabbix-agent





