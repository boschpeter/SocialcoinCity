# VmWare


## ubuntu-20.04-desktop-amd64.iso   

[pi imager](https://www.raspberrypi.org/downloads/)

[install-ubuntu-raspberry-pi](https://www.tomshardware.com/how-to/install-ubuntu-raspberry-pi)

[ubuntu mate](https://ubuntu-mate.org/download/amd64/focal/thanks/?method=direct)

[ubuntu-20.04-preinstalled-server-arm64+raspi.img.xz](https://ubuntu.com/download/raspberry-pi/thank-you?version=20.04&architecture=arm64+raspi)

You are now running the Ubuntu Server on your Raspberry Pi.Things to try next= Install a desktop 
````sudo apt-get install xubuntu-desktop````



````

Find an SD card that is empty, or does not contain any data you want to keep; it will be completely erased of all data during this process.
Download Raspberry Pi Imager for your operating system from the list near the top of this page.
Click “CHOOSE OS” and select “Misc utility images” then “Pi 4 EEPROM boot recovery”.
Insert an SD card, click “CHOOSE SD CARD”, select the card you have inserted, then click “WRITE”.
Once the SD card is ready, insert it into your Raspberry Pi 4 then connect the Raspberry Pi to power.
Once complete, the green LED will blink rapidly in a steady pattern. Disconnect the device from power. 
Now you can remove the recovery SD card, rt your usual SD card, and resume using your Raspberry Pi.

````
## boscp08@kubernetes-worker2:~$ ssh-keygen -R 192.168.2.16

## ssh ubuntu@192.168.2.16


````
boscp08@kubernetes-worker2:~$ ssh-keygen -R 192.168.2.16
Host 192.168.2.16 not found in /home/boscp08/.ssh/known_hosts


ssh-copy-id -i ~/.ssh/id_rsa.pub boscp08@192.168.2.16

boscp08@kubernetes-worker2:~$ ssh ubuntu@192.168.2.16^
boscp08@kubernetes-worker2:~$ ssh ubuntu@192.168.2.16
The authenticity of host '192.168.2.16 (192.168.2.16)' can't be established.
ECDSA key fingerprint is SHA256:2PCpohfq/VCBEp0OJ+RY9p6gw34C1HKY0RW0P4mys/8.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '192.168.2.16' (ECDSA) to the list of known hosts.
ubuntu@192.168.2.16's password: 
You are required to change your password immediately (administrator enforced)
Welcome to Ubuntu 20.04 LTS (GNU/Linux 5.4.0-1008-raspi aarch64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Jun 18 08:54:28 UTC 2020

  System load:           0.23
  Usage of /:            1.5% of 117.08GB
  Memory usage:          6%
  Swap usage:            0%
  Temperature:           40.4 C
  Processes:             133
  Users logged in:       0
  IPv4 address for eth0: 192.168.2.16
  IPv6 address for eth0: 2a02:a449:3b40:1:dea6:32ff:fe69:91fe

0 updates can be installed immediately.
0 of these updates are security updates.


The list of available updates is more than a week old.
To check for new updates run: sudo apt update


The programs included with the Ubuntu system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

WARNING: Your password has expired.
You must change your password now and login again!
Changing password for ubuntu.
Current password: 
New password: 
Retype new password: 
passwd: password updated successfully
Connection to 192.168.2.16 closed.
boscp08@kubernetes-worker2:~$ ssh ubuntu@192.168.2.16
ubuntu@192.168.2.16's password: 
Welcome to Ubuntu 20.04 LTS (GNU/Linux 5.4.0-1008-raspi aarch64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Thu Jun 18 08:55:14 UTC 2020

  System load:           0.61
  Usage of /:            1.6% of 117.08GB
  Memory usage:          6%
  Swap usage:            0%
  Temperature:           40.4 C
  Processes:             135
  Users logged in:       0
  IPv4 address for eth0: 192.168.2.16
  IPv6 address for eth0: 2a02:a449:3b40:1:dea6:32ff:fe69:91fe


0 updates can be installed immediately.
0 of these updates are security updates.


The list of available updates is more than a week old.
To check for new updates run: sudo apt update

Last login: Thu Jun 18 08:54:31 2020 from 192.168.2.62
To run a command as administrator (user "root"), use "sudo <command>".
See "man sudo_root" for details.

ubuntu@ubuntu:~$ df
Filesystem     1K-blocks    Used Available Use% Mounted on
udev             1891984       0   1891984   0% /dev
tmpfs             388440    3928    384512   2% /run
/dev/mmcblk0p2 122767116 1920376 115811416   2% /
tmpfs            1942188       0   1942188   0% /dev/shm
tmpfs               5120       0      5120   0% /run/lock
tmpfs            1942188       0   1942188   0% /sys/fs/cgroup
/dev/mmcblk0p1    258095   62017    196079  25% /boot/firmware
/dev/loop0         24192   24192         0 100% /snap/snapd/7267
/dev/loop1         49664   49664         0 100% /snap/core18/1708
/dev/loop2         62720   62720         0 100% /snap/lxd/14808
tmpfs             388436       0    388436   0% /run/user/1000

````


## VMware-Player-15.5.6-16341506.x86_64.bundle
````5M43Q-40K4M-H8JEC-0R0UK-A54JJ````
Thank you for buying VMware Workstation 15! Mware Workstation 15 is the most advanced virtualization software that supports the broadest number of operating systems and delivers the richest desktop user experience.
We believe that you will find VMware Workstation 15 to be an indispensable application that improves your productivity and becomes crucial to running your business.
Enjoy!

## sudo apt install net-tools

````
sudo systemctl status ssh
sudo apt update
sudo apt upgrade
sudo apt install openssh-server
sudo apt-get install sshpass
sudo systemctl status ssh
ssh-copy-id -i ~/.ssh/id_rsa.pub boscp08@localhost
````
## sudo apt install timeshift

## sudo timeshift --create 

````
ubuntu@ubuntu:~$ sudo timeshift --create 
First run mode (config file not found)
Selected default snapshot type: RSYNC
Mounted '/dev/sda5' at '/run/timeshift/backup'
Selected default snapshot device: /dev/sda5
------------------------------------------------------------------------------
Estimating system size...
Creating new snapshot...(RSYNC)
Saving to device: /dev/sda5, mounted at path: /run/timeshift/backup
Synching files with rsync...
Created control file: /run/timeshift/backup/timeshift/snapshots/2020-06-17_00-57-44/info.json
RSYNC Snapshot saved successfully (158s)
Tagged snapshot '2020-06-17_00-57-44': ondemand
------------------------------------------------------------------------------
````


## sudo timeshift --list
````
ubuntu@ubuntu:~$ sudo timeshift --list

/dev/sda5 is mounted at: /run/timeshift/backup, options: rw,relatime,errors=remount-ro

Device : /dev/sda5
UUID   : 56d4fc5e-19b3-4f7e-b2d5-6a1062b127fb
Path   : /run/timeshift/backup
Mode   : RSYNC
Status : OK
1 snapshots, 7.4 GB free

Num     Name                 Tags  Description  
------------------------------------------------------------------------------
0    >  2020-06-17_00-57-44  O  


## ansible -i hosts vmware -m ping
````
boscp08@kubernetes-worker2:~/.../vmware$ ansible -i hosts vmware -m ping
192.168.2.8 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
192.168.2.5 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
boscp08@kubernetes-worker2:~/.../vmware$ 
````

````

# how-to-install-mysql-on-ubuntu-20-04
[how-to-install-mysql-on-ubuntu-20-04](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-20-04)

##  sudo apt install mysql-server
````
ubuntu@ubuntu:~$ sudo apt install mysql-server
[sudo] password for ubuntu: 
Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following additional packages will be installed:
  libaio1 libcgi-fast-perl libcgi-pm-perl libevent-core-2.1-7 libfcgi-perl libhtml-template-perl libmecab2 mecab-ipadic mecab-ipadic-utf8 mecab-utils mysql-client-8.0 mysql-client-core-8.0 mysql-server-8.0
  mysql-server-core-8.0
Suggested packages:
  libipc-sharedcache-perl mailx tinyca
The following NEW packages will be installed:
  libaio1 libcgi-fast-perl libcgi-pm-perl libevent-core-2.1-7 libfcgi-perl libhtml-template-perl libmecab2 mecab-ipadic mecab-ipadic-utf8 mecab-utils mysql-client-8.0 mysql-client-core-8.0 mysql-server
  mysql-server-8.0 mysql-server-core-8.0
0 upgraded, 15 newly installed, 0 to remove and 0 not upgraded.
Need to get 30.0 MB of archives.
After this operation, 245 MB of additional disk space will be used.
Do you want to continue? [Y/n] y
Get:1 http://us.archive.ubuntu.com/ubuntu focal-updates/main amd64 mysql-client-core-8.0 amd64 8.0.20-0ubuntu0.20.04.1 [4196 kB]
Get:2 http://us.archive.ubuntu.com/ubuntu focal-updates/main amd64 mysql-client-8.0 amd64 8.0.20-0ubuntu0.20.04.1 [22.0 kB]
Get:3 http://us.archive.ubuntu.com/ubuntu focal/main amd64 libaio1 amd64 0.3.112-5 [7184 B]
Get:4 http://us.archive.ubuntu.com/ubuntu focal/main amd64 libevent-core-2.1-7 amd64 2.1.11-stable-1 [89.1 kB]
Get:5 http://us.archive.ubuntu.com/ubuntu focal/main amd64 libmecab2 amd64 0.996-10build1 [233 kB]
Get:6 http://us.archive.ubuntu.com/ubuntu focal-updates/main amd64 mysql-server-core-8.0 amd64 8.0.20-0ubuntu0.20.04.1 [17.2 MB]
Get:7 http://us.archive.ubuntu.com/ubuntu focal-updates/main amd64 mysql-server-8.0 amd64 8.0.20-0ubuntu0.20.04.1 [1228 kB]
Get:8 http://us.archive.ubuntu.com/ubuntu focal/main amd64 libcgi-pm-perl all 4.46-1 [186 kB]
Get:9 http://us.archive.ubuntu.com/ubuntu focal/main amd64 libfcgi-perl amd64 0.79-1 [33.1 kB]
Get:10 http://us.archive.ubuntu.com/ubuntu focal/main amd64 libcgi-fast-perl all 1:2.15-1 [10.5 kB]
Get:11 http://us.archive.ubuntu.com/ubuntu focal/main amd64 libhtml-template-perl all 2.97-1 [59.0 kB]
Get:12 http://us.archive.ubuntu.com/ubuntu focal/main amd64 mecab-utils amd64 0.996-10build1 [4912 B]
Get:13 http://us.archive.ubuntu.com/ubuntu focal/main amd64 mecab-ipadic all 2.7.0-20070801+main-2.1 [6714 kB]
Get:14 http://us.archive.ubuntu.com/ubuntu focal/main amd64 mecab-ipadic-utf8 all 2.7.0-20070801+main-2.1 [4380 B]
Get:15 http://us.archive.ubuntu.com/ubuntu focal-updates/main amd64 mysql-server all 8.0.20-0ubuntu0.20.04.1 [9540 B]
Fetched 30.0 MB in 4s (8328 kB/s)  
Preconfiguring packages ...
Selecting previously unselected package mysql-client-core-8.0.
(Reading database ... 188087 files and directories currently installed.)
Preparing to unpack .../00-mysql-client-core-8.0_8.0.20-0ubuntu0.20.04.1_amd64.deb ...
Unpacking mysql-client-core-8.0 (8.0.20-0ubuntu0.20.04.1) ...
Selecting previously unselected package mysql-client-8.0.
Preparing to unpack .../01-mysql-client-8.0_8.0.20-0ubuntu0.20.04.1_amd64.deb ...
Unpacking mysql-client-8.0 (8.0.20-0ubuntu0.20.04.1) ...
Selecting previously unselected package libaio1:amd64.
Preparing to unpack .../02-libaio1_0.3.112-5_amd64.deb ...
Unpacking libaio1:amd64 (0.3.112-5) ...
Selecting previously unselected package libevent-core-2.1-7:amd64.
Preparing to unpack .../03-libevent-core-2.1-7_2.1.11-stable-1_amd64.deb ...
Unpacking libevent-core-2.1-7:amd64 (2.1.11-stable-1) ...
Selecting previously unselected package libmecab2:amd64.
Preparing to unpack .../04-libmecab2_0.996-10build1_amd64.deb ...
Unpacking libmecab2:amd64 (0.996-10build1) ...
Selecting previously unselected package mysql-server-core-8.0.
Preparing to unpack .../05-mysql-server-core-8.0_8.0.20-0ubuntu0.20.04.1_amd64.deb ...
Unpacking mysql-server-core-8.0 (8.0.20-0ubuntu0.20.04.1) ...
Selecting previously unselected package mysql-server-8.0.
Preparing to unpack .../06-mysql-server-8.0_8.0.20-0ubuntu0.20.04.1_amd64.deb ...
Unpacking mysql-server-8.0 (8.0.20-0ubuntu0.20.04.1) ...
Selecting previously unselected package libcgi-pm-perl.
Preparing to unpack .../07-libcgi-pm-perl_4.46-1_all.deb ...
Unpacking libcgi-pm-perl (4.46-1) ...
Selecting previously unselected package libfcgi-perl.
Preparing to unpack .../08-libfcgi-perl_0.79-1_amd64.deb ...
Unpacking libfcgi-perl (0.79-1) ...
Selecting previously unselected package libcgi-fast-perl.
Preparing to unpack .../09-libcgi-fast-perl_1%3a2.15-1_all.deb ...
Unpacking libcgi-fast-perl (1:2.15-1) ...
Selecting previously unselected package libhtml-template-perl.
Preparing to unpack .../10-libhtml-template-perl_2.97-1_all.deb ...
Unpacking libhtml-template-perl (2.97-1) ...
Selecting previously unselected package mecab-utils.
Preparing to unpack .../11-mecab-utils_0.996-10build1_amd64.deb ...
Unpacking mecab-utils (0.996-10build1) ...
Selecting previously unselected package mecab-ipadic.
Preparing to unpack .../12-mecab-ipadic_2.7.0-20070801+main-2.1_all.deb ...
Unpacking mecab-ipadic (2.7.0-20070801+main-2.1) ...
Selecting previously unselected package mecab-ipadic-utf8.
Preparing to unpack .../13-mecab-ipadic-utf8_2.7.0-20070801+main-2.1_all.deb ...
Unpacking mecab-ipadic-utf8 (2.7.0-20070801+main-2.1) ...
Selecting previously unselected package mysql-server.
Preparing to unpack .../14-mysql-server_8.0.20-0ubuntu0.20.04.1_all.deb ...
Unpacking mysql-server (8.0.20-0ubuntu0.20.04.1) ...
Setting up libmecab2:amd64 (0.996-10build1) ...
Setting up mysql-client-core-8.0 (8.0.20-0ubuntu0.20.04.1) ...
Setting up libcgi-pm-perl (4.46-1) ...
Setting up libhtml-template-perl (2.97-1) ...
Setting up mecab-utils (0.996-10build1) ...
Setting up libevent-core-2.1-7:amd64 (2.1.11-stable-1) ...
Setting up mysql-client-8.0 (8.0.20-0ubuntu0.20.04.1) ...
Setting up libfcgi-perl (0.79-1) ...
Setting up libaio1:amd64 (0.3.112-5) ...
Setting up mecab-ipadic (2.7.0-20070801+main-2.1) ...
Compiling IPA dictionary for Mecab.  This takes long time...
reading /usr/share/mecab/dic/ipadic/unk.def ... 40
emitting double-array: 100% |###########################################| 
/usr/share/mecab/dic/ipadic/model.def is not found. skipped.
reading /usr/share/mecab/dic/ipadic/Postp-col.csv ... 91
reading /usr/share/mecab/dic/ipadic/Noun.proper.csv ... 27328
reading /usr/share/mecab/dic/ipadic/Auxil.csv ... 199
reading /usr/share/mecab/dic/ipadic/Adj.csv ... 27210
reading /usr/share/mecab/dic/ipadic/Interjection.csv ... 252
reading /usr/share/mecab/dic/ipadic/Prefix.csv ... 221
reading /usr/share/mecab/dic/ipadic/Noun.adjv.csv ... 3328
reading /usr/share/mecab/dic/ipadic/Noun.csv ... 60477
reading /usr/share/mecab/dic/ipadic/Conjunction.csv ... 171
reading /usr/share/mecab/dic/ipadic/Noun.nai.csv ... 42
reading /usr/share/mecab/dic/ipadic/Others.csv ... 2
reading /usr/share/mecab/dic/ipadic/Noun.demonst.csv ... 120
reading /usr/share/mecab/dic/ipadic/Noun.place.csv ... 72999
reading /usr/share/mecab/dic/ipadic/Adverb.csv ... 3032
reading /usr/share/mecab/dic/ipadic/Adnominal.csv ... 135
reading /usr/share/mecab/dic/ipadic/Noun.number.csv ... 42
reading /usr/share/mecab/dic/ipadic/Postp.csv ... 146
reading /usr/share/mecab/dic/ipadic/Filler.csv ... 19
reading /usr/share/mecab/dic/ipadic/Noun.verbal.csv ... 12146
reading /usr/share/mecab/dic/ipadic/Verb.csv ... 130750
reading /usr/share/mecab/dic/ipadic/Noun.adverbal.csv ... 795
reading /usr/share/mecab/dic/ipadic/Noun.name.csv ... 34202
reading /usr/share/mecab/dic/ipadic/Noun.org.csv ... 16668
reading /usr/share/mecab/dic/ipadic/Noun.others.csv ... 151
reading /usr/share/mecab/dic/ipadic/Symbol.csv ... 208
reading /usr/share/mecab/dic/ipadic/Suffix.csv ... 1393
emitting double-array: 100% |###########################################| 
reading /usr/share/mecab/dic/ipadic/matrix.def ... 1316x1316
emitting matrix      : 100% |###########################################| 

done!
update-alternatives: using /var/lib/mecab/dic/ipadic to provide /var/lib/mecab/dic/debian (mecab-dictionary) in auto mode
Setting up libcgi-fast-perl (1:2.15-1) ...
Setting up mysql-server-core-8.0 (8.0.20-0ubuntu0.20.04.1) ...
Setting up mecab-ipadic-utf8 (2.7.0-20070801+main-2.1) ...
Compiling IPA dictionary for Mecab.  This takes long time...
reading /usr/share/mecab/dic/ipadic/unk.def ... 40
emitting double-array: 100% |###########################################| 
/usr/share/mecab/dic/ipadic/model.def is not found. skipped.
reading /usr/share/mecab/dic/ipadic/Postp-col.csv ... 91
reading /usr/share/mecab/dic/ipadic/Noun.proper.csv ... 27328
reading /usr/share/mecab/dic/ipadic/Auxil.csv ... 199
reading /usr/share/mecab/dic/ipadic/Adj.csv ... 27210
reading /usr/share/mecab/dic/ipadic/Interjection.csv ... 252
reading /usr/share/mecab/dic/ipadic/Prefix.csv ... 221
reading /usr/share/mecab/dic/ipadic/Noun.adjv.csv ... 3328
reading /usr/share/mecab/dic/ipadic/Noun.csv ... 60477
reading /usr/share/mecab/dic/ipadic/Conjunction.csv ... 171
reading /usr/share/mecab/dic/ipadic/Noun.nai.csv ... 42
reading /usr/share/mecab/dic/ipadic/Others.csv ... 2
reading /usr/share/mecab/dic/ipadic/Noun.demonst.csv ... 120
reading /usr/share/mecab/dic/ipadic/Noun.place.csv ... 72999
reading /usr/share/mecab/dic/ipadic/Adverb.csv ... 3032
reading /usr/share/mecab/dic/ipadic/Adnominal.csv ... 135
reading /usr/share/mecab/dic/ipadic/Noun.number.csv ... 42
reading /usr/share/mecab/dic/ipadic/Postp.csv ... 146
reading /usr/share/mecab/dic/ipadic/Filler.csv ... 19
reading /usr/share/mecab/dic/ipadic/Noun.verbal.csv ... 12146
reading /usr/share/mecab/dic/ipadic/Verb.csv ... 130750
reading /usr/share/mecab/dic/ipadic/Noun.adverbal.csv ... 795
reading /usr/share/mecab/dic/ipadic/Noun.name.csv ... 34202
reading /usr/share/mecab/dic/ipadic/Noun.org.csv ... 16668
reading /usr/share/mecab/dic/ipadic/Noun.others.csv ... 151
reading /usr/share/mecab/dic/ipadic/Symbol.csv ... 208
reading /usr/share/mecab/dic/ipadic/Suffix.csv ... 1393
emitting double-array: 100% |###########################################| 
reading /usr/share/mecab/dic/ipadic/matrix.def ... 1316x1316
emitting matrix      : 100% |###########################################| 

done!
update-alternatives: using /var/lib/mecab/dic/ipadic-utf8 to provide /var/lib/mecab/dic/debian (mecab-dictionary) in auto mode
Setting up mysql-server-8.0 (8.0.20-0ubuntu0.20.04.1) ...
update-alternatives: using /etc/mysql/mysql.cnf to provide /etc/mysql/my.cnf (my.cnf) in auto mode
Renaming removed key_buffer and myisam-recover options (if present)
mysqld will log errors to /var/log/mysql/error.log
mysqld is running as pid 6653
Created symlink /etc/systemd/system/multi-user.target.wants/mysql.service → /lib/systemd/system/mysql.service.
Setting up mysql-server (8.0.20-0ubuntu0.20.04.1) ...
Processing triggers for systemd (245.4-4ubuntu3.1) ...
Processing triggers for man-db (2.9.1-1) ...
Processing triggers for libc-bin (2.31-0ubuntu9) ...

````


## sudo mysql 

In order to use a password to connect to MySQL as root, you will need to switch its authentication method from auth_socket to another plugin, such as caching_sha2_password or mysql_native_password. To do this, open up the MySQL prompt from your terminal:

## mysql>  SELECT user,authentication_string,plugin,host FROM mysql.user;    

( mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'ThisIsCool_2020'; don't do this let it be on a)


````
mysql>  SELECT user,authentication_string,plugin,host FROM mysql.user;
+------------------+------------------------------------------------------------------------+-----------------------+-----------+
| user             | authentication_string                                                  | plugin                | host      |
+------------------+------------------------------------------------------------------------+-----------------------+-----------+
| debian-sys-maint | $A$005$B_n+?>_<lN=dd"U8dMuZiX3OrAUpe5tk3NlA4.RmwTUT27hbgT4MeH/nNA/ | caching_sha2_password | localhost |
| mysql.infoschema | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED | caching_sha2_password | localhost |
| mysql.session    | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED | caching_sha2_password | localhost |
| mysql.sys        | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED | caching_sha2_password | localhost |
| root             |                                                                        | auth_socket           | localhost |
+------------------+------------------------------------------------------------------------+-----------------------+-----------+
5 rows in set (0.00 sec)

mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'ThisIsCool_2020';
Query OK, 0 rows affected (0.02 sec)

mysql> FLUSH PRIVILEGES
    -> ;
Query OK, 0 rows affected (0.01 sec)

mysql>  SELECT user,authentication_string,plugin,host FROM mysql.user;
+------------------+------------------------------------------------------------------------+-----------------------+-----------+
| user             | authentication_string                                                  | plugin                | host      |
+------------------+------------------------------------------------------------------------+-----------------------+-----------+
| debian-sys-maint | $A$005$B_n+?>_<lN=dd"U8dMuZiX3OrAUpe5tk3NlA4.RmwTUT27hbgT4MeH/nNA/ | caching_sha2_password | localhost |
| mysql.infoschema | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED | caching_sha2_password | localhost |
| mysql.session    | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED | caching_sha2_password | localhost |
| mysql.sys        | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED | caching_sha2_password | localhost |
| root             | $A$005$Uzg?V}yIq/sN:%9OaDJq5CjmZw2GdnYBI1ZlcD3b7q7IytsMD0grSAETmC | caching_sha2_password | localhost |
+------------------+------------------------------------------------------------------------+-----------------------+-----------+
5 rows in set (0.00 sec)
````

## sudo nano /etc/mysql/my.cnf
Write root login credentials /etc/msql/my.cnf
````
[client]
user=root
password=ThisIsCool_2020
````

## ubuntu@ubuntu:/etc/mysql/mysql.conf.d$ sudo nano mysqld.cnf 
Grant access by editing /etc/mysql/mysql.conf.d/mysqld.cnf
````
 regexp: 'bind-address'
      replace: '# bind-address  Ansible Grant access by editing '
````

I am facing problem with mysql non root/admin user, I am following the below steps for creating user and its privileges,

## mysql> CREATE USER 'golden'@'%' IDENTIFIED BY  'ThisIsCool_2020';

Query OK, 0 rows affected (0.00 sec)

## mysql> GRANT ALL PRIVILEGES ON * . * TO 'golden'@'%';
Query OK, 0 rows affected (0.00 sec)

## mysql> FLUSH PRIVILEGES;

##    SELECT user,authentication_string,plugin,host FROM mysql.user;
Check the authentication methods employed by each of your users again to confirm that root no longer authenticates using the auth_socket plugin:

````
mysql> SELECT user,authentication_string,plugin,host FROM mysql.user;
+------------------+------------------------------------------------------------------------+-----------------------+-----------+
| user             | authentication_string                                                  | plugin                | host      |
+------------------+------------------------------------------------------------------------+-----------------------+-----------+
| golden           | $A$005$ymh81tMO%Ed=7Q}9f6d5BS.WD9Ob7JrLVBGwPfOumNTtrmBRowCVULIVbv8 | caching_sha2_password | %         |
| debian-sys-maint | $A$005$"%
                              L^zbx<TMZO{MBvT7PZ02ybOtmN3h/H6w1qjRSMHtB2bIsnuveq1Nqiz7C | caching_sha2_password | localhost |
| mysql.infoschema | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED | caching_sha2_password | localhost |
| mysql.session    | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED | caching_sha2_password | localhost |
| mysql.sys        | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED | caching_sha2_password | localhost |
| root             | $A$005$Dh:Npwwfw2Mmc3
                                          mr8dJ/m4zDjtATwt0xRXFPlWyH1FyNcjMoH91TvshsC | caching_sha2_password | localhost |
+------------------+------------------------------------------------------------------------+-----------------------+-----------+
6 rows in set (0.00 sec)


````

## ansible mysql_user_module

[mysql_user_module](https://docs.ansible.com/ansible/latest/modules/mysql_user_module.html)

