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
    # descargamos las librerías
wget https://http.kali.org/kali/pool/main/l/linux/linux-kbuild-6.8.11_6.8.11-1kali2_amd64.deb
wget https://http.kali.org/kali/pool/main/l/linux/linux-kbuild-6.8.11-dbgsym_6.8.11-1kali2_amd64.deb
wget https://http.kali.org/kali/pool/main/l/linux/linux-headers-6.8.11-common_6.8.11-1kali2_all.deb
wget https://http.kali.org/kali/pool/main/l/linux/linux-headers-6.8.11-amd64_6.8.11-1kali2_amd64.deb
    # instalar por orden las librerías
dpkg -i linux-kbuild-6.8.11_6.8.11-1kali2_amd64.deb
dpkg -i linux-kbuild-6.8.11-dbgsym_6.8.11-1kali2_amd64.deb
dpkg -i linux-headers-6.8.11-common_6.8.11-1kali2_all.deb
dpkg -i linux-headers-6.8.11-amd64_6.8.11-1kali2_amd64.deb
    # borrar instaladores
rm linux-kbuild-6.8.11_6.8.11-1kali2_amd64.deb
rm linux-kbuild-6.8.11-dbgsym_6.8.11-1kali2_amd64.deb
rm linux-headers-6.8.11-common_6.8.11-1kali2_all.deb
rm linux-headers-6.8.11-amd64_6.8.11-1kali2_amd64.deb


######## DRIVER tarjeta Alfa AWUS1900 
git clone https://github.com/morrownr/8814au.git
cd 8814au
make
    # Ejecutar manualmente al iniciar por primera vez
#./install-driver.sh


