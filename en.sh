

#Check Root
[ $(id -u) != "0" ] && { echo "Error: Must be roo "; exit 1; }

echo "WELCOME to use ALL-IN-ONE INSTALL SCRIPT v0.1"

echo 'SCRIPT LASTEST DOWNLOAD'
echo 'https://github.com/Sakuralotus/automatically-linux-script'
echo "TYPE NUMBER TO CHOOSE："
echo   ---------------Minecraft SERVER----------
echo "1.BEDROCK EDITION v1.5.0-Pocketmine CORE"
echo "2.JAVA EDITION v1.12.2-spigot CORE"
while :; do echo
	read -p "PLEASE SELECT： " choice
	if [[ ! $choice =~ ^[1-2]$ ]]; then
		echo "Type Error Please try again"
	else
		break	
	fi
done

if [[ $choice == 1 ]];
then
	yum install unzip wget screen -y
	wget http://mcpc.tw/public/file/contoboo15.zip
	unzip contoboo15.zip
	cd server
	chmod 777 start.sh
	screen -S mcbe './start.sh'
fi

if [[ $choice == 2 ]];then
	yum install wget java-1.8.0-openjdk java-1.8.0-openjdk-devel gcc-c++ unzip -y
	wget http://mcpc.tw/public/file/spigot-1.12.2.jar
	wget http://mcpc.tw/public/file/eula.txt
	screen -S mcpc 'java -Xmx3100M -Xms1024M -jar spigot-1.12.2.jar'
fi
