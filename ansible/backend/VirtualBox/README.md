# virtualbox-6.1_6.1.10-138449 Ubuntu~eoan_amd64.deb  

virtualbox.org/wiki/Linux_Downloads VirtualBox is a powerful PC virtualization solution allowing you to run a wide range of PC operating systems on your Linux system. This includes Windows, Linux, FreeBSD, DOS, OpenBSD and others. VirtualBox comes with a broad feature set and excellent performance, making it the premier virtualization software solution on the market. virtualbox-6.1_6.1.10-138449~Ubuntu~eoan_amd64.deb 88,4 MB



## ssh-copy-id -i ~/.ssh/id_rsa.pub boscp08@192.168.2.15

````
boscp08@kubernetes-worker2:~$ ssh-keygen -R 192.168.2.15
# Host 192.168.2.15 found: line 15
/home/boscp08/.ssh/known_hosts updated.
Original contents retained as /home/boscp08/.ssh/known_hosts.old
boscp08@kubernetes-worker2:~$ ssh-copy-id -i ~/.ssh/id_rsa.pub boscp08@192.168.2.15
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/boscp08/.ssh/id_rsa.pub"
The authenticity of host '192.168.2.15 (192.168.2.15)' can't be established.
ECDSA key fingerprint is SHA256:oYQaKT5jg4kqj85gE3RqvILfHE8UrzW3Q7xWzShC+tE.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
boscp08@192.168.2.15's password: 

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'boscp08@192.168.2.15'"
and check to make sure that only the key(s) you wanted were added.

boscp08@kubernetes-worker2:~$ ssh boscp08@192.168.2.15
Welcome to Ubuntu 20.04 LTS (GNU/Linux 5.4.0-37-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage


0 updates can be installed immediately.
0 of these updates are security updates.

Your Hardware Enablement Stack (HWE) is supported until April 2025.


````

