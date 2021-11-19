# Script om zabbix te installeren 
# Voor versie: Debian 10
# Download script via: wget https://raw.githubusercontent.com/Remandknol/scripts/main/linux-zabbix-install.sh

#download
apt-get update
apt-get -y install zabbix-agent
systemctl enable zabbix-agent

#config editing
sed -i 's/Server=127.0.0.1/Server=100.100.2.233, 100.101.99.30/' /etc/zabbix/zabbix_agentd.conf
sed -i 's/ServerActive=127.0.0.1/ServerActive=100.101.99.30/' /etc/zabbix/zabbix_agentd.conf
sed -i 's/# HostnameItem=system.hostname/HostnameItem=system.hostname/' /etc/zabbix/zabbix_agentd.conf
sed -i 's/# HostMetadata=/HostMetadata=Telefonie-linux/' /etc/zabbix/zabbix_agentd.conf
service zabbix-agent restart
