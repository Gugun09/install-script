#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
IZIN=$( curl https://quenssh.herokuapp.com/aksesku | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
echo -e ""
echo -e "=============================-Menu-=============================" | lolcat
echo -e "* menu         : List of Main Commands" | lolcat
echo -e ""
echo -e "=========================-SSH & OpenVPN-========================" | lolcat
echo -e "* usernew      : Create SSH/SSL Cloudflare & OpenVPN Account" | lolcat
echo -e "* trial        : Generate SSH/SSL Cloudflare & OpenVPN Trial Account" | lolcat
echo -e "* renew        : Extending SSH & OpenVPN Account Active Life" | lolcat
echo -e "* deluser      : Delete SSH & OpenVPN Account" | lolcat
echo -e "* cek          : Check User Login SSH & OpenVPN" | lolcat
echo -e "* member       : Daftar Member SSH & OpenVPN" | lolcat
echo -e "* delete       : Delete User Expired SSH & OpenVPN" | lolcat
echo -e "* autokill     : Set up Autokill SSH" | lolcat
echo -e "* ceklim       : Displays Users Who Do Multi Login SSH" | lolcat
echo -e "* restart      : Restart Service Dropbear, Squid3, OpenVPN dan SSH" | lolcat
echo -e ""
echo -e "===========================-Wireguard-=========================" | lolcat
echo -e "* add-wg       : Create Wireguard Account" | lolcat
echo -e "* del-wg       : Delete Wireguard Account" | lolcat
echo -e "* cek-wg       : Check User Login Wireguard" | lolcat
echo -e "* renew-wg     : Extending Wireguard Account Active Life" | lolcat
echo -e "* wg show      : Check Wireguard User Interface" | lolcat
echo -e ""
echo -e "=============================-L2TP-============================" | lolcat
echo -e "* add-l2tp     : Creating L2TP Account" | lolcat
echo -e "* del-l2tp     : Deleting L2TP Account" | lolcat
echo -e "* renew-l2tp   : Extending L2TP Account Active Life" | lolcat
echo -e ""
echo -e "=============================-PPTP-============================" | lolcat
echo -e "* add-pptp     : Create Account PPTP" | lolcat
echo -e "* del-pptp     : Delete PPTP Account" | lolcat
echo -e "* renew-pptp   : Extending PPTP Account Active Life" | lolcat
echo -e "* cek-pptp     : Check User Login PPTP" | lolcat
echo -e ""
echo -e "=============================-SSTP-============================" | lolcat
echo -e "* add-sstp     : Create Account SSTP" | lolcat
echo -e "* del-sstp     : Delete SSTP Account" | lolcat
echo -e "* renew-sstp   : Extending SSTP Account Active Life" | lolcat
echo -e "* cek-sstp     : Check User Login SSTP" | lolcat
echo -e ""
echo -e "=============================-SSR-=============================" | lolcat
echo -e "* add-ssr      : Create SSR Account" | lolcat
echo -e "* del-ssr      : Deleting SSR Account" | lolcat
echo -e "* renew-ssr    : Extending SSR Account Active Life" | lolcat
echo -e "* ssr          : Show Other SSR Menu" | lolcat
echo -e ""
echo -e "========================-Shadowsocks OBFS-=====================" | lolcat
echo -e "* add-ss       : Creating Shadowsocks Account" | lolcat
echo -e "* del-ss       : Delete Shadowsocks Account" | lolcat
echo -e "* renew-ss     : Extending Shadowsocks Account Active Life" | lolcat
echo -e "* cek-ss       : Check User Login Shadowsocks" | lolcat
echo -e ""
echo -e "=============================-VMESS-===========================" | lolcat
echo -e "* add-ws       : Create V2RAY Vmess Websocket Account" | lolcat
echo -e "* del-ws       : Deleting V2RAY Vmess Websocket Account" | lolcat
echo -e "* renew-ws     : Extending Vmess Account Active Life" | lolcat
echo -e "* cek-ws       : Check User Login V2RAY" | lolcat
echo -e "* cert2vray    : Renew Certificate V2RAY Account" | lolcat
echo -e ""
echo -e "=============================-VLESS-===========================" | lolcat
echo -e "* add-vless    : Create V2RAY Vless Websocket Account" | lolcat
echo -e "* del-vless    : Deleting V2RAY Vless Websocket Account" | lolcat
echo -e "* renew-vless  : Extending Vless Account Active Life" | lolcat
echo -e "* cek-ws       : Check User Login V2RAY" | lolcat
echo -e ""
echo -e "=============================-Trojan-==========================" | lolcat
echo -e "* add-tr       : Create Trojan Account" | lolcat
echo -e "* del-tr       : Deleting Trojan Account" | lolcat
echo -e "* renew-tr     : Extending Trojan Account Active Life" | lolcat
echo -e "* cek-tr       : Check User Login Trojan" | lolcat
echo -e ""
echo -e "=============================-SYSTEM-==========================" | lolcat
echo -e "* add-host     : Add Or Change Subdomain Host For VPS" | lolcat
echo -e "* change-port  : Change Port Of Some Service" | lolcat
echo -e "* autobackup   : Autobackup Data VPS" | lolcat
echo -e "* backup       : Backup Data VPS" | lolcat
echo -e "* restore      : Restore Data VPS" | lolcat
echo -e "* wbmn         : Webmin Menu" | lolcat
echo -e "* limit-speed  : Limit Bandwith Speed Server" | lolcat
echo -e "* ram          : Check Usage of VPS Ram" | lolcat
echo -e "* reboot       : Reboot VPS" | lolcat
echo -e "* speedtest    : Speedtest VPS" | lolcat
echo -e "* info         : Displaying System information" | lolcat
echo -e "* about        : Info Script Auto Install" | lolcat
echo -e "* exit         : Exit From VPS " | lolcat
echo -e ""
echo -e "===============================================================" | lolcat
echo -e ""
