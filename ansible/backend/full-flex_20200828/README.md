
# VMware Workstation 15.5.1 Player for Linux 64-bit

Run a Second, Isolated Operating System on a Single PC with VMware Workstation Player VMware Workstation Player 
allows you to run a second, isolated operating system on a single PC. With many uses ranging from a personal educational tool,
to a business tool for providing a simplified experience to run a corporate desktop on a BYO device, 
Workstation Player leverages  the VMware vSphere hypervisor to provide a simple yet mature and stable, 
local virtualization solution.


## ssh-copy-id -i ~/.ssh/id_rsa.pub boscp08@192.168.2.5

````
boscp08@kubernetes-worker2:~$ ssh-keygen -R 192.168.2.5
Host 192.168.2.5 not found in /home/boscp08/.ssh/known_hosts
boscp08@kubernetes-worker2:~$ ssh-copy-id -i ~/.ssh/id_rsa.pub boscp08@192.168.2.5
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/home/boscp08/.ssh/id_rsa.pub"
The authenticity of host '192.168.2.5 (192.168.2.5)' can't be established.
ECDSA key fingerprint is SHA256:XuNKvFc2sHM569hHIj+z/Eox1MhtH9Y41HVeSFXe28g.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
boscp08@192.168.2.5's password: 

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'boscp08@192.168.2.5'"
and check to make sure that only the key(s) you wanted were added.

boscp08@kubernetes-worker2:~$ ssh boscp08@192.168.2.5
Welcome to Ubuntu 20.04 LTS (GNU/Linux 5.4.0-37-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage


0 updates can be installed immediately.
0 of these updates are security updates.

Your Hardware Enablement Stack (HWE) is supported until April 2025.
Last login: Mon Jun 15 04:31:43 2020 from 192.168.2.62
````

## sudo apt install git 

## sudo apt install ansible

````
boscp08@ubuntu:~$ ansible --version
ansible 2.9.6
  config file = /etc/ansible/ansible.cfg
  configured module search path = ['/home/boscp08/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python3/dist-packages/ansible
  executable location = /usr/bin/ansible
  python version = 3.8.2 (default, Apr 27 2020, 15:53:34) [GC
````



## https://azizunsal.github.io/blog/post/ansible-ssh-pass/
apt-get install sshpass

## 	git config --global user.email "bosch.peter@icloud.com"

##  vscode://vscode.github-authentication/did-authenticate?windowId=1&code=73671ebd2f29a5b18279&state=0e2406cf-2391-4da0-9c2a-a0847c36bb4a 

