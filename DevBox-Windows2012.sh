printf '\nVisit https://dashboard.ngrok.com/get-started/setup and Copy the authtoken \n'
read -p "Paste authtoken here (Copy and Right-click to paste): " CRP
mkdir W2012Aero
cd W2012Aero
wget -O W2012.vhd https://app.vagrantup.com/thuonghai2711/boxes/W2012DevBox/versions/1.0.0/providers/virtualbox.box
clear
VBoxManage createvm --name W2012 --ostype Windows8_64 --register --basefolder `pwd` 
VBoxManage modifyvm W2012 --ioapic on 
VBoxManage modifyvm W2012 --memory 11000 --vram 256 --cpus 8
VBoxManage modifyvm W2012 --nic1 nat 
VBoxManage modifyvm W2012 --natpf1 "rdp,tcp,,33899,,3389"
vboxmanage storagectl W2012 --name "SATA Controller" --add sata --controller IntelAHCI --portcount 1 --bootable on
vboxmanage storageattach W2012 --storagectl "SATA Controller" --device 0 --port 0 --type hdd --medium /home/developer/W2012Aero/W2012.vhd
VBoxManage startvm "W2012" --type headless
clear
printf '\nDownloading NGROK... \n'
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && unzip *.zip
wget https://raw.githubusercontent.com/ThuongHai/thuonghai/master/ngrok-ap-linux.sh
./ngrok authtoken $CRP
./ngrok-ap-linux.sh 33899
clear
echo All done! Connect your VM using RDP.
echo "IP: [ $NGROK_PUBLIC_URL ]"
echo User: Administrator
echo Pass: Thuonghai001
echo Finished! You can Close PUTTY now.






