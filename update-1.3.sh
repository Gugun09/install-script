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
wget -O /usr/bin/add-sstp https://queenssh.herokuapp.com/add-sstp.sh && chmod +x /usr/bin/add-sstp
wget -O /usr/bin/del-sstp https://queenssh.herokuapp.com/del-sstp.sh && chmod +x /usr/bin/del-sstp
wget -O /usr/bin/cek-sstp https://queenssh.herokuapp.com/cek-sstp.sh && chmod +x /usr/bin/cek-sstp
wget -O /usr/bin/renew-sstp https://queenssh.herokuapp.com/renew-sstp.sh && chmod +x /usr/bin/renew-sstp
wget -O add-wg "https://queenssh.herokuapp.com/add-wg.sh"
wget -O del-wg "https://queenssh.herokuapp.com/del-wg.sh"
wget -O cek-wg "https://queenssh.herokuapp.com/cek-wg.sh"
wget -O renew-wg "https://queenssh.herokuapp.com/renew-wg.sh"
wget -O add-ss "https://queenssh.herokuapp.com/add-ss.sh"
wget -O del-ss "https://queenssh.herokuapp.com/del-ss.sh"
wget -O cek-ss "https://queenssh.herokuapp.com/cek-ss.sh"
wget -O renew-ss "https://queenssh.herokuapp.com/renew-ss.sh"
wget -O /usr/bin/add-ssr https://queenssh.herokuapp.com/add-ssr.sh && chmod +x /usr/bin/add-ssr
wget -O /usr/bin/del-ssr https://queenssh.herokuapp.com/del-ssr.sh && chmod +x /usr/bin/del-ssr
wget -O /usr/bin/renew-ssr https://queenssh.herokuapp.com/renew-ssr.sh && chmod +x /usr/bin/renew-ssr
wget -O add-ws "https://queenssh.herokuapp.com/add-ws.sh"
wget -O add-vless "https://queenssh.herokuapp.com/add-vless.sh"
wget -O add-tr "https://queenssh.herokuapp.com/add-tr.sh"
wget -O del-ws "https://queenssh.herokuapp.com/del-ws.sh"
wget -O delv-less "https://queenssh.herokuapp.com/del-vless.sh"
wget -O del-tr "https://queenssh.herokuapp.com/del-tr.sh"
wget -O cek-ws "https://queenssh.herokuapp.com/cek-ws.sh"
wget -O cek-vless "https://queenssh.herokuapp.com/cek-vless.sh"
wget -O cek-tr "https://queenssh.herokuapp.com/cek-tr.sh"
wget -O renew-ws "https://queenssh.herokuapp.com/renew-ws.sh"
wget -O renew-vless "https://queenssh.herokuapp.com/renew-vless.sh"
wget -O renew-tr "https://queenssh.herokuapp.com/renew-tr.sh"
#wget -O xp-ws "https://queenssh.herokuapp.com/xp-ws.sh"
#wget -O xp-tr "https://queenssh.herokuapp.com/xp-tr.sh"
#wget -O xp-vless "https://queenssh.herokuapp.com/xp-vless.sh"
#wget -O certv2ray "https://queenssh.herokuapp.com/cert.sh"
wget -O /usr/bin/add-l2tp https://queenssh.herokuapp.com/add-l2tp.sh && chmod +x /usr/bin/add-l2tp
wget -O /usr/bin/del-l2tp https://queenssh.herokuapp.com/del-l2tp.sh && chmod +x /usr/bin/del-l2tp
#wget -O /usr/bin/xp-l2tp https://queenssh.herokuapp.com/xp-l2tp.sh && chmod +x /usr/bin/xp-l2tp
wget -O /usr/bin/add-pptp https://queenssh.herokuapp.com/add-pptp.sh && chmod +x /usr/bin/add-pptp
wget -O /usr/bin/del-pptp https://queenssh.herokuapp.com/del-pptp.sh && chmod +x /usr/bin/del-pptp
#wget -O /usr/bin/xp-pptp https://queenssh.herokuapp.com/xp-pptp.sh && chmod +x /usr/bin/xp-pptp
wget -O /usr/bin/renew-pptp https://queenssh.herokuapp.com/renew-pptp.sh && chmod +x /usr/bin/renew-pptp
wget -O /usr/bin/renew-l2tp https://queenssh.herokuapp.com/renew-l2tp.sh && chmod +x /usr/bin/renew-l2tp
chmod +x add-ws
chmod +x add-vless
chmod +x add-tr
chmod +x del-ws
chmod +x del-vless
chmod +x del-tr
chmod +x cek-ws
chmod +x cek-vless
chmod +x cek-tr
chmod +x renew-ws
chmod +x renew-tr
chmod +x renew-vless
#chmod +x xp-ws
#chmod +x xp-tr
#chmod +x xp-vless
#chmod +x certv2ray
chmod +x add-ss
chmod +x del-ss
chmod +x cek-ss
chmod +x xp-ss
chmod +x renewss
chmod +x add-wg
chmod +x del-wg
chmod +x cek-wg
chmod +x renew-wg
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
