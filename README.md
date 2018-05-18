永恒之蓝  MS17-010 Scan and Exploit Shell 
2018.5.10 小爱Joker 

开源时间2018.5.18 盗版必究.

最近为了方便测试内网 使用shell脚本编写 

Mac下使用：sh ms17-010.sh

Linux下使用 首先赋予权限 chmod +x ms17-010.sh & ./ms17-010.sh

Kali下 chmod +x ms17-010.sh & ./ms17-010.sh

简介
通过shell脚本调用Nmap扫描 & Metasploit渗透 

框架不同 直接get system或者反弹一个Meterpreter会话 

getsystem //通过系统漏洞进行get system权限  

shell //进入cmd
