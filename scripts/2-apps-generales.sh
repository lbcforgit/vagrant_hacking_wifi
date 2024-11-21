#!/bin/bash
#Configuramos que por defecto las instalaciones sean no interactivas
export DEBIAN_FRONTEND=noninteractive

#INSTALAR 

#------- Rendimiento  -----------------------------------------
sudo apt install htop -y
sudo apt install s-tui -y

#------- Ejecución de aplicaciones Windows
sudo apt install mono-complete -y

#------- Desarrollo -----------------------
#Visual Studio Code
  #instalación repositorio e instalación por paquete apt
echo "code code/add-microsoft-repo boolean true" | sudo debconf-set-selections
sudo apt install apt-transport-https
sudo apt update
sudo apt install code -y # or code-insiders

#wget -O visualstudiocode.deb https://code.visualstudio.com/download# 
#sudo apt install visualstudiocode.deb
#rm visualstudiocode.deb

#------- Descompresión de ficheros  -----------------------
apt install unzip -y

#------- Visualización de directorios -----------------------
apt install tree -y

#------- HTTP -----------------------
apt install curl -y

#------- Edición de imágenes GIMP -----------------------
apt install flatpak -y
flatpak install -y https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
echo "alias gimp='flatpak run org.gimp.GIMP'" >> /home/vagrant/.zshrc
echo "GIMP -> ejecutar por terminal 'gimp'" >> /home/vagrant/Desktop/GIMP-help


#------- Ayuda (en kali no hace falta ahora lo de crear la carpeta y actualizar)
apt install tldr -y
#    runuser -l vagrant -c "mkdir -p /home/vagrant/.local/share/tldr"
#    runuser -l vagrant -c "tldr -u"

#------- Contraseñas -----------------------
apt install keepassxc-full -y

#------- Grabación de pantalla -----------------------
apt install asciinema -y
apt install recordmydesktop -y
