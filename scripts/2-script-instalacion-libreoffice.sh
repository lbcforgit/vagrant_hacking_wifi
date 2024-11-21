#INSTALAR LIBREOFFICE EN CASTELLANO -- Error: dpkg no encuentra los ficheros de libreoffice
#los ficheros de instalación de app e idiomas tienen que estar en la carpeta del usuario
#Se puede descargar con wget desde https://ftp.cixug.es/tdf/libreoffice/stable/ 
cd /home/vagrant/
wget -O libreoffice_deb.tar.gz https://download.documentfoundation.org/libreoffice/stable/24.8.2/deb/x86_64/LibreOffice_24.8.2_Linux_x86-64_deb.tar.gz 
tar -xvzf "libreoffice_deb.tar.gz"
dpkg -i LibreOffice_24.8.2_Linux_x86-64_deb/DEBS/*.deb
rm -rf LibreOffice_24.8.2_Linux_x86-64_deb 

#Instalamos el paquete de idioma
wget -O libreoffice-langpack_es.tar.gz https://download.documentfoundation.org/libreoffice/stable/24.8.2/deb/x86_64/LibreOffice_24.8.2_Linux_x86-64_deb_langpack_es.tar.gz
tar -xvzf libreoffice-langpack_es.tar.gz
dpkg -i LibreOffice_24.8.2_Linux_x86-64_deb_langpack_es/DEBS/*.deb
rm -rf LibreOffice_24.8.2_Linux_x86-64_deb_langpack_es



