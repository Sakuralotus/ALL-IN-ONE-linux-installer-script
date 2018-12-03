#This version only can install minecraft server

#Check Root
[ $(id -u) != "0" ] && { echo "Error: 給他root一下"; exit 1; }

echo "歡迎使用 全自動開服腳本PC/BE v0.1"

echo '腳本最新地址'
echo 'https://github.com/Sakuralotus/automatically-linux-script'
echo "輸入数字選擇功能："
echo   ---------------Minecraft伺服器----------
echo "1.手機服版本v1.5.0-Pocketmine核心"
echo "2.電腦服版本v1.12.2-spigot核心"
while :; do echo
	read -p "请選擇： " choice
	if [[ ! $choice =~ ^[1-2]$ ]]; then
		echo "輸入錯誤! 不要亂打啦!"
	else
		break	
	fi
done

if [[ $choice == 1 ]];then
yum install unzip wget -y && wget http://lastworld.mcbe.tw:23333/public/file/contoboo15.zip && unzip contoboo15.zip && cd server && chmod 777 start.sh && ./start.sh
fi

if [[ $choice == 2 ]];then
yum install wget java-1.8.0-openjdk java-1.8.0-openjdk-devel gcc-c++ unzip -y && wget http://lastworld.mcbe.tw:23333/public/file/spigot-1.12.2.jar && wget http://lastworld.mcbe.tw:23333/public/file/eula.txt && java -Xmx3100M -Xms1024M -jar spigot-1.12.2.jar
fi
