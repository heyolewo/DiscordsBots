#!/bin/bash

     # Lewis Dediğin LEwis Gibidir Her zaman çalışır # 

    # Renkler 


        cyan='\e[0;36m'
        lightcyan='\e[96m'
        lightgreen='\e[1;32m'
        white='\e[1;37m'
        red='\e[1;31m'
        yellow='\e[1;33m'
        blue='\e[1;34m'
        tp='\e[0m'
        green='\e[0;32m'
        bold='\e[25mNormal"'

    ###


    # Nesneler

        blink='\e[5m'
        setdir=$PWD


    #####
    #spinlong
    spinlong ()
{
    bar="====================================================="
    barlength=${#bar}
    i=0
    while ((i < 100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.02
    done
    echo -e "[${red}${blink}+${tp}]"
}


while :; do
clear
cat banners/banners2 | lolcat
echo ""
echo ""
echo -e "------------------------ Discord Bot Gereksinimleri ------------------------" | lolcat
echo ""
echo -e "                                  ${red}[+]${lightgreen} Developer = Lewis${tp}"
echo -e "                                  ${red}[+]${lightgreen} Github = www.github.com/lewistodev "
echo ""
echo -e "${red}[H]${cyan} Yardım    ${red}[1]${cyan} Visual Studio Code   ${red}[2]${cyan} Node.js   ${red}[3]${cyan} Glitch    ${red}[4]${cyan} Altyapı YAKINDA! " 
echo ""
echo -ne "Bakmak İstediğiniz Bölüm => " | lolcat
read x

## Girişler


     if [[ $x =~ ^(h|H|help|Help) ]] ; then     
       echo -e "${red}[+]${cyan} Bu Tool Discord Bot Geliştirme Hakkında İşinize Yarayacak Programları Size Sunar. \n${red}[+]${cyan} Ve Bende Bir Bot Geliştiricisi Olarak Sizlere Deneyimlerimi Sunacağım! "
       sleep 10

     elif [[ $x = "1" ]] ; then

      echo -e "${red}[+]${cyan} Visual Studio Code İndirilme Sayfasına Gidiliyor! "
      spinlong
      sleep 1
      firefox https://code.visualstudio.com/
      echo -e "${red}[+]${cyan} Site Açıldı Menüye Geri Gidiliyor! "        
      spinlong
      sleep 5
     elif [[ $x = "2" ]] ; then
      echo -e "${red}[!]${cyan} Yapılan İşlemler Uzun Sürebilir, Lütfen Bekleyiniz! "
      echo -e "${red}[!]${cyan} İşlemler Başlatılıyor! "
      sleep 2
      sudo apt-get install python g++ make checkinstall fakeroot
      spinlong
      sleep 0.3
      src=$(mktemp -d) && cd $src
      spinlong
      sleep 0.3
      wget -N http://nodejs.org/dist/node-latest.tar.gz
      spinlong
      sleep 0.3
      tar xzvf node-latest.tar.gz && cd node-v*
      spinlong
      sleep 0.3
      ./configure
      spinlong 
      sleep 0.3
      echo -e "${red}[!]${cyan} Bu İşlem Zaman Alabilir Lütfen Bekleyiniz! "
      sudo fakeroot checkinstall -y --install=no --pkgversion $(echo $(pwd) | sed -n -re's/.+node-v(.+)$/\1/p') make -j$(($(nproc)+1)) install
      echo -e "${red}[!]${cyan} İşlem Tamamlandı"
      spinlong
      sleep 0.3
      echo -e "1-) İndirilen Paketi | dpkg -i [dosya adı] | olarak çalıştırınız (Parantezler Olmadan)"
      echo -e "2-) node -v"
      echo -e "3-) npm -v"
      echo -e "${red}[!]${cyan}${blink}İşlem Tamamlandı${tp}"
    elif [[ $x = "3" ]] ; then 
      echo -e "${red}[+]${cyan} Glitch Sahip Olduğunuz Bot'u oraya yükleyerek ve ardından Uptime Ederek 7/24 Yapabileceğiniz bir Web Sitesidir. \n${red}[+]${cyan} Veya Web sitesinin kendi sattığı Upgrade/Boost alarak'ta 7/24 Sorunsuz Aktif Edebilirsiniz."
      echo -e "${blink}${red}[!]${tp}${cyan} Site Açılıyor!"
      spinlong
      sleep 3
      firefox www.glitch.com
      sleep 1
    elif [[ $x = "4" ]] ; then
    echo -e "${blink}[+] Altyapı Çok Yakında!" | lolcat 
    sleep 3              
 else
        echo -e "${cyan} Yanlış Veri Girdiniz!"
        sleep 1  
fi
done



# ilk gün 80 satır yazılmıştır !