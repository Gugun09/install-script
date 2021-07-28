#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
URL=$( curl https://url-script.herokuapp.com);
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
IZIN=$( wget -qO- icanhazip.com | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Please Contact Admin"
rm -f setup.sh
exit 0
fi
clear
read -p "Username : " Login
read -p "Password : " Pass
read -p "Expired (hari): " masaaktif

IP=$(wget -qO- icanhazip.com);
domain=$(cat /root/domain);
ssl="$(cat ~/log-install.txt | grep -w "Stunnel4" | cut -d: -f2)"
sshws="$(cat ~/log-install.txt | grep -w "SSH Websocket" | cut -d: -f2)"
sslws="$(cat ~/log-install.txt | grep -w "SSL Websocket" | cut -d: -f2)"
sqd="$(cat ~/log-install.txt | grep -w "Squid" | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk '{print $4}' | cut -d: -f2)"
sleep 1
echo Ping Host
echo Cek Hak Akses...
sleep 0.5
echo Permission Accepted
clear
sleep 0.5
echo Membuat Akun: $Login
sleep 0.5
echo Setting Password: $Pass
sleep 0.5
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "Thank You For Using Our Services" | lolcat
echo -e "SSH/SSL Cloudflare & OpenVPN Account Info" | lolcat
echo -e "Username       : $Login " | lolcat
echo -e "Password       : $Pass" | lolcat
echo -e "===============================" | lolcat
echo -e "Host           : $IP" | lolcat
echo -e "Domain WS      : $domain" | lolcat
echo -e "OpenSSH        : 22" | lolcat
echo -e "Dropbear       : 109, 143" | lolcat
echo -e "SSL/TLS        :$ssl" | lolcat
echo -e "Port HTTP WS   :$sshws" | lolcat
echo -e "Port SSL WS    :$sslws" | lolcat
echo -e "Port Squid     :$sqd" | lolcat
echo -e "===============================" | lolcat
echo -e "Payload SSH Websocket" | lolcat
echo -e "GET / HTTP/1.1[crlf]Host: ${domain}[crlf]Upgrade: websocket[crlf][crlf]" | lolcat
echo -e "===============================" | lolcat
echo -e "OpenVPN        : TCP $ovpn http://$IP:81/client-tcp-$ovpn.ovpn" | lolcat
echo -e "OpenVPN        : UDP $ovpn2 http://$IP:81/client-udp-$ovpn2.ovpn" | lolcat
echo -e "OpenVPN        : SSL 442 http://$IP:81/client-tcp-ssl.ovpn" | lolcat
echo -e "badvpn         : 7100-7900" | lolcat
echo -e "===============================" | lolcat
echo -e "Expired On     : $exp" | lolcat
