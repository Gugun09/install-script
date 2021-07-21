#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
IZIN=$( curl https://queenssh.herokuapp.com/aksesku | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${red}Permission Denied!${NC}";
echo "Only For Premium Users"
exit 0
fi
clear
uuid=$(cat /etc/trojan-go/uuid.txt)
source /var/lib/premium-script/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/v2ray/domain)
else
domain=$IP
fi
tr-go="$(cat ~/log-install.txt | grep -i Trojan-go | cut -d: -f2|sed 's/ //g')"
until [[ $user =~ ^[a-zA-Z0-9_]+$ && ${user_EXISTS} == '0' ]]; do
		read -rp "Password: " -e user
		user_EXISTS=$(grep -w $user /etc/trojan-go/akun.conf | wc -l)

		if [[ ${user_EXISTS} == '1' ]]; then
			echo ""
			echo "A client with the specified name was already created, please choose another name."
			exit 1
		fi
	done
read -p "Expired (days): " masaaktif
sed -i '/"'""$uuid""'"$/a\,"'""$user""'"' /etc/trojan-go/config.json
exp=`date -d "$masaaktif days" +"%Y-%m-%d"`
echo -e "### $user $exp" >> /etc/trojan-go/akun.conf
systemctl restart trojan-go
trojanlink="trojan-go://${user}@${domain}:${tr-go}/?sni=${domain}&type=ws&host=${domain}&path=/queenssh"
clear
echo -e ""
echo -e "=============-Trojan-============" | lolcat
echo -e "Remarks        : ${user}" | lolcat
echo -e "Host/IP        : ${domain}" | lolcat
echo -e "port           : ${tr-go}" | lolcat
echo -e "Key            : ${user}" | lolcat
echo -e "link           : ${trojanlink}" | lolcat
echo -e "=================================" | lolcat
echo -e "Expired On     : $exp" | lolcat
echo -e "Mod by Gugun" | lolcat