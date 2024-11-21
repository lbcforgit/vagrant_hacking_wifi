#!/bin/bash

######### DRIVERS tarjetas usb alfa - NO FUNCIONA EN KALI 2024.3   ####
#apt install -y realtek-rtl88xxau-dkms
#apt install -y realtek-rtl8814au-dkms

######### Librerías necesarias ########
apt install bc -y
apt install dkms -y

######### KALI 2024.3 - LINUX HEADERS ####################################
# https://http.kali.org/kali/pool/main/l/linux/ 
cd /home/vagrant
#kernel=$((uname -r))
apt install linux-image-6.11.2-amd64 -y
apt install linux-headers-6.11.2-amd64 -y
######## DRIVER tarjeta Alfa AWUS1900 
git clone https://github.com/morrownr/8814au.git
cd 8814au
    # Ejecutar manualmente al iniciar por primera vez
#make
#./install-driver.sh


