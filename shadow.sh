#!/system/bin/sh


#fuction

metalow() {
    cd
    pkg update
    pkg install curl
    pkg install ruby
    pkg install openssh
    pkg install wget
    curl -LO https://github.com/termux/termux-packages/files/3995119/metasploit_5.0.65-1_all.deb.gz
    gunzip metasploit_5.0.65-1_all.deb.gz
    dpkg -i metasploit_5.0.65-1_all.deb
    apt -f install
}

metahigh() {
    pkg update
    pkg install unstable-repo
    pkg install metasploit
}

#code
echo
echo " ~ Metasploit Installer"
echo " ~ Made By Ihtisham Ali - Shadow Walker"
echo " ~ Facebook: ShadowWalkerYt"
echo " ~ YouTube: https://tiny.cc/ShadowYT"
echo
echo
echo " ~ Choose Your Phone Version"
echo
echo " 01) Android Version 4.0, 5.0, 6.0"
echo " 02) Android Version 7.0, 8.0, 9.0, 10.0"
read -p ' ~ Type Number And Hit Enter: ' verName



loc="$PREFIX/bin/msfconsole"

if [[ $verName == 1 ]]; then
     metalow
     if [[ -f $loc ]]; then
          echo
          echo " ~ Metasploit Installed Successfully"
          echo " ~ Type msfconsole To Run"
          echo " ~ Subscribe My YouTube Channel"
          echo " ~ Link: https://tiny.cc/ShadowYT"
          xdg-open https://youtube.com/shadowwalkeryt
     else
          echo
          echo " ~ Fialed To Install Metasploit"
          echo
     fi
elif [[ $verName == 2 ]]; then
     metahigh
     if [[ -f $loc ]]; then
          echo
          echo " ~ Metasploit Installed Successfully"
          echo " ~ Type msfconsole To Run"
          echo " ~ Subscribe My YouTube Channel"
          echo " ~ Link: https://tiny.cc/ShadowYT"
          xdg-open https://youtube.com/shadowwalkeryt
     else
          echo
          echo " ~ Fialed To Install Metasploit"
          echo
     fi
else
     echo
     echo " ~ Wrong Choose! Try Again"
     echo
fi
								


