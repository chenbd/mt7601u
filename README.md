mt7601u
=======

Ralink Wireless Adapter Driver


步骤一 下载代码

下载代码。。没有git的同学，可以在右边 Download zip文件。

步骤二 编译驱动

运行 脚本 编译驱动（Ubuntu 12.04下编过）

sudo ./miwifi_build.sh 编译驱动 如果没有看到 错误 Error 字样，就算可以了。

步骤三 配置DHCP服务

安装DHCP 服务器和配置 
    1.安装 sudo apt-get install dhcp3-server

(如果遇到 locate dhcp3-server, 请使用 sudo apt-get update)

    2.编辑 sudo vim /etc/dhcp/dhcpd.conf 加上了下面一段。。(搜索 This is ；另外注意DNS（domain-name-servers），你们自己选择合适你们的) subnet 192.168.199.0 netmask 255.255.255.0 { range 192.168.199.10 192.168.199.20; option routers 192.168.199.1; option domain-name-servers 114.114.114.114; }

    3.编辑 sudo vim /etc/default/isc-dhcp-server 为 INTERFACES="ra0"

步骤四 加载驱动

    root权限 运行脚本 加载驱动 和 设置DHCP服务器 和 设置ip转发规则（我平常用eth0来上网，所以有需要的同学自行更改） sudo ./miwifi_work.sh

步骤五 配置MiWiFi

    如果一切顺利，你会搜到一个 网络名 MiWiFi_SuMang 密码 52xiaomi

PS：如果修改成你们想要的SSID和密码 方法一：修改mt7601u/etc/Wireless/RT2870AP/RT2870AP.dat ，重新编译。。 方法二：直接修改/etc/Wireless/RT2870AP/RT2870AP.dat
