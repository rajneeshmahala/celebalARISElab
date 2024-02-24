sudo apt update
sudo apt upgrade -y
sudo apt install xrdp -y
sudo systemctl status xrdp
sudo adduser $USER xrdp
sudo cat  /etc/xrdp/xrdp.ini
sudo apt install xfce4 xfce4-goodies -y
echo "xfce4-session" > ~/.xsession
sudo echo "startxfce4" >> /etc/xrdp/startwm.sh
sudo ufw allow 3389/tcp
sudo ufw reload
