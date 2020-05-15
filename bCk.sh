#!/usr/bin/bash
#FellFreeToRecode
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'
LIMITATOR=5
clear
BANNERS () {
printf "
${lightgreen}
#####################################################\n 
                  ${yellow}Coded By ./KindoL
                ===================== 
${lightgreen}
 _  ___           _       _     
| |/ (_)_ __   __| | ___ | |    
|   /| |  _ \ / _  |/ _ \| |    
| . \| | | | | (_| | (_) | |___ 
|_|\_\_|_| |_|\__._|\___/|_____| \n
${white}MASSED DOWNLOAD BACKUP.ZIP CHECKER MASSED    
${lightgreen}=====================================================\n
${BlueF}root@Date :~$ ${cyan}$(date) \n
${BlueF}#!/system/bin/bash Linux Android x86_64 
${lightgreen}
=====================================================\n
\n        
"
}
BANNERS
OPTIONS (){

printf "${red}[>]${white} List                        :${lightgreen} "
read list


printf "${red}[>]${white} Path backup                 :${lightgreen} "
read backup

printf "${red}[>]${white} Save As                     :${lightgreen} "
read save

site=$(cat $list)
}
OPTIONS
printf "\n${lightgreen}Sek Lurr...\n\n"
for site in $(cat $list);
do
((cthread=cthread%LIMITATOR)); ((cthread++==0)) && wait
if [[ $( curl --connect-timeout 0 --max-time 10 -kLs -I ${site}${backup} ) =~ "application/zip" ]]; then
  printf "${white}[+] ${site} is ${lightgreen} Mantab\n"
  echo "$site$backup" >> ${save}
else
  printf "${white}[+] ${site} is ${red} Bad\n"
fi
done
printf "\n${lightgreen}Save as ${save}...\n\n"
