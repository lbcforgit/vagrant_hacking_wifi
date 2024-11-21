# -*- mode: ruby -*-
# vi: set ft=ruby :

################################################
#         created by Luis Besteiro Calvo
################################################

Vagrant.configure("2") do |config|
  config.vm.define "kali-hacking-wifi-luisbc" do |ka|
    ka.vm.box = "kalilinux/rolling"
    ka.vm.box_version = "2024.3.1"
    config.vm.synced_folder "ficheros-compartidos", "/home/vagrant/ficheros-compartidos"

    #VIRTUALBOX -----------------------
    ka.vm.provider "virtualbox" do |vb|
        vb.gui = true
        vb.name = "Kali-hacking-wifi-luisbc"
        #vb.memory = "2048"
        #vb.cpus = "2"
    end

    #VMWARE -----------------------
    ka.vm.provider "vmware_fusion" do |vmware|
        vmware.gui = true
        vmware.linked_clone = false
        #vmware.vmx["ethernet0.pcislotnumber"] = "160"
        #vmware.vmx["ethernet0.virtualDev"] = "vmxnet3"
        vmware.vmx["displayname"] = "Kali-hacking-wifi"
        #vmware.vmx["memsize"] = "2048"
        #vmware.vmx["numvcpus"] = "2"    
    end
       
    #Scripts
    ka.vm.provision "shell", path: "scripts/1-script-configuracion-inicial.sh"
    ka.vm.provision "shell", path: "scripts/2-apps-generales.sh"
    #ka.vm.provision "shell", path: "scripts/2-script-instalacion-libreoffice.sh"
    ka.vm.provision "shell", path: "scripts/20-hacking-wifi.sh"
    ka.vm.provision "shell", path: "scripts/21-drivers-alfa-AWUS1900-KaliRolling.sh"
    #ka.vm.provision "shell", path: "scripts/21-drivers-alfa-AWUS1900-6.8.11.sh"
    #ka.vm.provision "shell", path: "scripts/21-drivers-alfa-AWUS036ACH-KaliRolling.sh"
    ka.vm.provision "shell", path: "scripts/99-script-cierre.sh"
  end
end
