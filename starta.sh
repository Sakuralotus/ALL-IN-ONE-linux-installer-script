

#Check Root
[ $(id -u) != "0" ] && { echo "Error: 給他root一下"; exit 1; }

echo "歡迎使用 ALL-IN-ONE開服腳本 v0.1"

echo '腳本最新地址'
echo 'https://github.com/Sakuralotus/automatically-linux-script'
echo   ---------------Language Select 語言選擇----------
echo "1.English"
echo "2.繁體中文"
while :; do echo
	read -p "請選擇Please Choice： " choice
	if [[ ! $choice =~ ^[1-2]$ ]]; then
		echo "輸入錯誤! 不要亂打啦!Type error Type 1 or 2 to select"
	else
		break	
	fi
done

if [[ $choice == 1 ]];then
yum install unzip wget -y && wget http://lastworld.mcbe.tw:23333/public/file/en.sh&& chmod 777 en.sh && ./en.sh
fi

if [[ $choice == 2 ]];then
yum install wget unzip -y && wget http://lastworld.mcbe.tw:23333/public/file/zh.sh && chmod 777 zh.sh && ./zh.sh
fi
