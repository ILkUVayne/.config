# wsl2使用本地代理

## proxy shell

将 **./proxy.sh** 放入 **/usr/local/bin/**

设置可执行

~~~bash
sudo chmod +x proxy
~~~

使用

~~~bash
source proxy set
~~~

## 关闭防火墙
主机上 Windows Defender 设置：可以简单关闭公用网络的防火墙，在Shell中 ping 主机 ip，或运行 wget www.google.com，如果可以运行，说明上面几步成功，此时 Shell 可以链接到主机上的代理
