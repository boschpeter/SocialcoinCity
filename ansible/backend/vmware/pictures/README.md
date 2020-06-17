# VmWare

## ubuntu-20.04-desktop-amd64.iso   



## VMware-Player-15.5.6-16341506.x86_64.bundle


## sudo apt install net-tools

````
sudo systemctl status ssh
sudo apt update
sudo apt upgrade
sudo apt install openssh-server
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


````
