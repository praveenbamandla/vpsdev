vpsdev
======

Create new user: 
-------------------------------    
adduser demo
gpasswd -a demo sudo

Change SSH config:
---------------------------------
vim /etc/ssh/sshd_config

Install softwares:
-------------------------------    
apt-get update
apt-get install ufw build-essential libssl-dev 
                xvfb fluxbox x11vnc x11-xkb-utils xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic
                xserver-xorg-core curl firefox cron python 
                    
apt-get install -f

Install nodejs
-------------------------------
curl -sL https://deb.nodesource.com/setup | sudo bash -
apt-get install nodejs

Timezone settings:
--------------------------------
dpkg-reconfigure tzdata
    
    
Create SSL certificate
----------------------------------
openssl req -new -x509 -days 365 -nodes -out self.pem -keyout self.pem

Crons
-----------------------------------
0 9 * * * /sbin/reboot
10 9 * * 1-5  DISPLAY=:1 xterm -x /root/Desktop/selenium.sh
26 9 * * 1-5  DISPLAY=:1 xterm -x /root/Desktop/bot.sh




