#!/bin/bash
#Configuramos que por defecto las instalaciones sean no interactivas
export DEBIAN_FRONTEND=noninteractive

#actualizar repos
apt update
# actualizar la distribución seleccionando la configuración por defecto en pantallas interactivas
#sudo DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
#sudo dpkg --configure -a


#Hora y fecha
timedatectl set-timezone Europe/Madrid
#teclado
 #temporal
#loadkeys es
 #permanente
#L=es && sudo sed -i 's/XKBLAYOUT=\"\w*"/XKBLAYOUT=\"'$L'\"/g' /etc/default/keyboard
