

echo "歡迎使用 全自動安裝腳本 v0.1"

echo '腳本最新地址'
echo 'https://github.com/Sakuralotus/automatically-linux-script'
echo "輸入數字選擇功能："

echo   ---------------網頁相關----------------------
echo "1.寶塔面版一鍵安裝"

echo   ---------------Minecraft伺服器----------
echo "2.手機服版本v1.5.0-Pocketmine核心"
echo "3.電腦服版本v1.12.2-Spigot核心"
while :
	do echo
	read -p "請選擇： " choice
	if [[ ! $choice =~ ^[1-3]$ ]];
	then
		echo "輸入錯誤! 不要亂打啦!"
	else
		break	
	fi
done

if [[ $choice == 2 ]];
then
	yum install unzip wget screen -y
	wget http://mcpc.tw/public/file/contoboo15.zip
	unzip contoboo15.zip
	cd server
	chmod 777 start.sh
	screen -S mcbe './start.sh'
fi

if [[ $choice == 3 ]];then
	yum install wget java-1.8.0-openjdk java-1.8.0-openjdk-devel gcc-c++ unzip -y
	wget http://mcpc.tw/public/file/spigot-1.12.2.jar
	wget http://mcpc.tw/public/file/eula.txt
	screen -S mcpc 'java -Xmx3100M -Xms1024M -jar spigot-1.12.2.jar'
fi

if [[ $choice == 1 ]];then
	yum install -y wget && wget -O install.sh http://download.bt.cn/install/install.sh && sh install.sh
fi
