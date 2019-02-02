

#Check Root
[ $(id -u) != "0" ] && { echo "Error: Must be roo "; exit 1; }

echo "WELCOME to use ALL-IN-ONE INSTALL SCRIPT v0.1"

echo 'SCRIPT LASTEST DOWNLOAD'
echo 'https://github.com/Sakuralotus/automatically-linux-script'
echo "TYPE NUMBER TO CHOOSE："
echo   ---------------SHELL----------------------
echo   ---------------WEB----------------------
echo "1.BT PANEL"
echo "2.LAMP"
echo "3.WORDPRESS"
echo   ---------------Minecraft Server----------
echo "4.MCBE v1.5.0-Pocketmine核心(CAN NOT DOWNLOAD)"
echo "5.MCPCv1.12.2-Spigot核心(CAN NOT DOWNLOAD)"
while :
	do echo
	read -p "PLEASE CHOICE： " choice
	if [[ ! $choice =~ ^[1-5]$ ]];
	then
		echo "TYPE ERROR PLEASE CHOOSE AGAIN!"
	else
		break	
	fi
done

if [[ $choice == 4 ]];
then
	yum install unzip wget screen -y
	wget http://mcpc.tw/public/file/contoboo15.zip
	unzip contoboo15.zip
	cd server
	chmod 777 start.sh
	screen -S mcbe './start.sh'
fi

if [[ $choice == 5 ]];then
	yum install wget java-1.8.0-openjdk java-1.8.0-openjdk-devel gcc-c++ unzip -y
	wget http://mcpc.tw/public/file/spigot-1.12.2.jar
	wget http://mcpc.tw/public/file/eula.txt
	screen -S mcpc 'java -Xmx3100M -Xms1024M -jar spigot-1.12.2.jar'
fi

if [[ $choice == 1 ]];then
	yum install -y wget && wget -O install.sh http://download.bt.cn/install/install.sh && sh install.sh
fi

if [[ $choice == 2 ]];then
	yum -y install wget screen git -y
	git clone https://github.com/teddysun/lamp.git
	cd lamp
	chmod 777 *.sh
	screen -S lamp './lamp.sh'
fi

if [[ $choice == 3 ]];then
	yum update
	cd /home
	yum install wget unzip httpd mysql zip gcc-c++ php-gd -y
    wget http://wordpress.org/latest.zip
	wget https://codeload.github.com/Sakuralotus/ALL-IN-ONE-linux-installer-script/zip/master
	unzip ALL-IN-ONE-linux-installer-script-master.zip
	cd ALL-IN-ONE-linux-installer-script-master
    mv wp-config.php /var/www/html/wordpress/ 	
	mysql -u root -p
	CREATE DATABASE `my_db`;
	CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
	FLUSH PRIVILEGES;
	systemctl restart mysqld.service
	unzip -q latest.zip -d /var/www/html/
	chown -R apache:apache /var/www/html/wordpress
	chmod -R 777 /var/www/html/wordpress
	mkdir -p /var/www/html/wordpress/wp-content/uploads
	chown -R :apache /var/www/html/wordpress/wp-content/uploads
fi
