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
if [[ $versi == 1.3 ]]; then
echo "You Have The Latest Version"
exit 0
fi
echo "Start Update"
cd /usr/bin
wget -O add-host "https://queenssh.herokuapp.com/add-host.sh"
wget -O about "https://queenssh.herokuapp.com/about.sh"
wget -O menu "https://queenssh.herokuapp.com/menuu.sh"
wget -O usernew "https://queenssh.herokuapp.com/usernew.sh"
wget -O trial "https://queenssh.herokuapp.com/trial.sh"
wget -O hapus "https://queenssh.herokuapp.com/hapus.sh"
wget -O member "https://queenssh.herokuapp.com/member.sh"
wget -O delete "https://queenssh.herokuapp.com/delete.sh"
wget -O cek "https://queenssh.herokuapp.com/cek.sh"
wget -O restart "https://queenssh.herokuapp.com/restart.sh"
wget -O speedtest "https://queenssh.herokuapp.com/speedtest_cli.py"
wget -O info "https://queenssh.herokuapp.com/info.sh"
wget -O ram "https://queenssh.herokuapp.com/ram.sh"
wget -O renew "https://queenssh.herokuapp.com/renew.sh"
wget -O autokill "https://queenssh.herokuapp.com/autokill.sh"
wget -O ceklim "https://queenssh.herokuapp.com/ceklim.sh"
wget -O tendang "https://queenssh.herokuapp.com/tendang.sh"
wget -O clear-log "https://queenssh.herokuapp.com/clear-log.sh"
wget -O change-port "https://queenssh.herokuapp.com/change.sh"
wget -O port-ovpn "https://queenssh.herokuapp.com/port-ovpn.sh"
wget -O port-ssl "https://queenssh.herokuapp.com/port-ssl.sh"
wget -O port-wg "https://queenssh.herokuapp.com/port-wg.sh"
wget -O port-tr "https://queenssh.herokuapp.com/port-tr.sh"
wget -O port-sstp "https://queenssh.herokuapp.com/port-sstp.sh"
wget -O port-squid "https://queenssh.herokuapp.com/port-squid.sh"
wget -O port-ws "https://queenssh.herokuapp.com/port-ws.sh"
wget -O port-vless "https://queenssh.herokuapp.com/port-vless.sh"
wget -O wbmn "https://queenssh.herokuapp.com/webmin.sh"
wget -O xp "https://queenssh.herokuapp.com/xp.sh"
wget -O welcomeadmin "https://queenssh.herokuapp.com/welcomeadmin.sh"
chmod +x add-host
chmod +x menu
chmod +x usernew
chmod +x trial
chmod +x hapus
chmod +x member
chmod +x delete
chmod +x cek
chmod +x restart
chmod +x speedtest
chmod +x info
chmod +x about
chmod +x autokill
chmod +x tendang
chmod +x ceklim
chmod +x ram
chmod +x renew
chmod +x clear-log
chmod +x change-port
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-wg
chmod +x port-sstp
chmod +x port-tr
chmod +x port-squid
chmod +x port-ws
chmod +x port-vless
chmod +x wbmn
chmod +x xp
chmod +x welcomeadmin
echo "0 0 * * * root clear-log && reboot" >> /etc/crontab
echo "0 0 * * * root xp" >> /etc/crontab
echo "0 0 * * * root delete" >> /etc/crontab
cd
echo "1.3" > /home/ver
clear
echo " Fix minor Bugs"
echo " Now You Can Change Port Of Some Services"
echo " Reboot 5 Sec"
sleep 5
rm -f update.sh
reboot
