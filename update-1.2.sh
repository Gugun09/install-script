#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
		echo "You need to run this script as root"
		exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
		echo "OpenVZ is not supported"
		exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- ifconfig.co);
versi=$(cat /home/ver)
if [[ $versi == 1.2 ]]; then
echo "You Have The Latest Version"
exit 0
fi
echo "Start Update"
cd /usr/bin
wget -O menu "https://queenssh.herokuapp.com/menuu.sh"
wget -O usernew "https://queenssh.herokuapp.com/usernew.sh"
wget -O trial "https://queenssh.herokuapp.com/trial.sh"
wget -O cek "https://queenssh.herokuapp.com/cek.sh"
wget -O add-host "https://queenssh.herokuapp.com/add-host.sh"
chmod +x menu
chmod +x usernew
chmod +x trial
chmod +x cek
chmod add-host
echo "0 5 * * * root clear-log && reboot" > /etc/crontab
echo "0 0 * * * root xp" > /etc/crontab
echo "0 0 * * * root delete" > /etc/crontab
cd
echo "1.2" > /home/ver
clear
echo " Fix minor Bugs"
echo " Now You Can Change Port Of Some Services"
echo " Reboot 5 Sec"
sleep 5
rm -f update.sh
reboot
