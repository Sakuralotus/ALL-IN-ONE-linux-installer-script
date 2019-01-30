

#Check Root
[ $(id -u) != "0" ] && { echo "Error: 給他root一下Must be root"; exit 1; }

echo "歡迎使用 ALL-IN-ONE安裝腳本 v0.1"

echo "Welcome to use ALL-IN-ONE install script v0.1"

echo '腳本最新地址'
echo 'Script lartest download'
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
chmod 777 en.sh && ./en.sh
fi

if [[ $choice == 2 ]];then
chmod 777 zh.sh && ./zh.sh
fi
