#!/bin/bash
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
echo -e "Selamat datang admin di Server $ISP\n  Silahkan ketik menu untuk pilihanmu" | boxes -d peek | lolcat
