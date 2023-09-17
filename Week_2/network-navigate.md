```
#interacting with network in cmd
theia@theia-vuxminhan:/home/project$ hostname
theia-vuxminhan
theia@theia-vuxminhan:/home/project$ hostname -i
172.22.157.188
theia@theia-vuxminhan:/home/project$ ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1480
        inet 172.22.157.188  netmask 255.255.255.255  broadcast 0.0.0.0
        inet6 fe80::18d2:15ff:fe6f:99d0  prefixlen 64  scopeid 0x20<link>
        ether 1a:d2:15:6f:99:d0  txqueuelen 0  (Ethernet)
        RX packets 5817  bytes 8067434 (8.0 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 5216  bytes 35793277 (35.7 MB)
        TX errors 0  dropped 1 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 12613  bytes 77690110 (77.6 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 12613  bytes 77690110 (77.6 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

theia@theia-vuxminhan:/home/project$ ifconfig eth0
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1480
        inet 172.22.157.188  netmask 255.255.255.255  broadcast 0.0.0.0
        inet6 fe80::18d2:15ff:fe6f:99d0  prefixlen 64  scopeid 0x20<link>
        ether 1a:d2:15:6f:99:d0  txqueuelen 0  (Ethernet)
        RX packets 5875  bytes 8077221 (8.0 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 5270  bytes 35803039 (35.8 MB)
        TX errors 0  dropped 1 overruns 0  carrier 0  collisions 0

theia@theia-vuxminhan:/home/project$ ping www.google.com
PING www.google.com (172.253.63.104): 56 data bytes
64 bytes from 172.253.63.104: icmp_seq=0 ttl=105 time=1.564 ms
64 bytes from 172.253.63.104: icmp_seq=1 ttl=105 time=1.494 ms
64 bytes from 172.253.63.104: icmp_seq=2 ttl=105 time=1.512 ms
64 bytes from 172.253.63.104: icmp_seq=3 ttl=105 time=1.583 ms
64 bytes from 172.253.63.104: icmp_seq=4 ttl=105 time=1.511 ms
64 bytes from 172.253.63.104: icmp_seq=5 ttl=105 time=1.580 ms
64 bytes from 172.253.63.104: icmp_seq=6 ttl=105 time=1.463 ms
64 bytes from 172.253.63.104: icmp_seq=7 ttl=105 time=1.495 ms
64 bytes from 172.253.63.104: icmp_seq=8 ttl=105 time=1.521 ms
64 bytes from 172.253.63.104: icmp_seq=9 ttl=105 time=1.435 ms
64 bytes from 172.253.63.104: icmp_seq=10 ttl=105 time=1.586 ms
64 bytes from 172.253.63.104: icmp_seq=11 ttl=105 time=1.492 ms
64 bytes from 172.253.63.104: icmp_seq=12 ttl=105 time=1.541 ms
^C--- www.google.com ping statistics ---
13 packets transmitted, 13 packets received, 0% packet loss
round-trip min/avg/max/stddev = 1.435/1.521/1.586/0.046 ms
theia@theia-vuxminhan:/home/project$ ping -c 5 www.google.com
PING www.google.com (142.251.167.99): 56 data bytes
64 bytes from 142.251.167.99: icmp_seq=0 ttl=105 time=1.418 ms
64 bytes from 142.251.167.99: icmp_seq=1 ttl=105 time=1.448 ms
64 bytes from 142.251.167.99: icmp_seq=2 ttl=105 time=1.495 ms
64 bytes from 142.251.167.99: icmp_seq=3 ttl=105 time=1.510 ms
64 bytes from 142.251.167.99: icmp_seq=4 ttl=105 time=1.509 ms
--- www.google.com ping statistics ---
5 packets transmitted, 5 packets received, 0% packet loss
round-trip min/avg/max/stddev = 1.418/1.476/1.510/0.037 ms
theia@theia-vuxminhan:/home/project$ curl https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
The unanimous Declaration of the thirteen united States of America, When in the
Course of human events, it becomes necessary for one people to dissolve the
political bands which have connected them with another, and to assume among the
powers of the earth, the separate and equal station to which the Laws of Nature
and of Nature's God entitle them, a decent respect to the opinions of mankind
requires that they should declare the causes which impel them to the
separation.
theia@theia-vuxminhan:/home/project$ curl -O https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  8121  100  8121    0     0  60155      0 --:--:-- --:--:-- --:--:-- 60155
theia@theia-vuxminhan:/home/project$ rm usdoi.txt
theia@theia-vuxminhan:/home/project$ wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
--2023-09-17 09:41:32--  https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
Resolving cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud (cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud)... 169.63.118.104
Connecting to cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud (cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud)|169.63.118.104|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 8121 (7.9K) [text/plain]
Saving to: ‘usdoi.txt’

usdoi.txt                       100%[====================================================>]   7.93K  --.-KB/s    in 0s      

2023-09-17 09:41:32 (1.22 GB/s) - ‘usdoi.txt’ saved [8121/8121]
# navigating in cmd
theia@theia-vuxminhan:/home/project$ pwd
/home/project
theia@theia-vuxminhan:/home/project$ ls
theia@theia-vuxminhan:/home/project$ ls /bin
bash     bzip2recover  dd             findmnt   lessfile  more           ps         sh.distrib  uname         zfgrep
bunzip2  bzless        df             fuser     lesskey   mount          pwd        sleep       uncompress    zforce
bzcat    bzmore        dir            grep      lesspipe  mountpoint     rbash      stty        vdir          zgrep
bzcmp    cat           dmesg          gunzip    ln        mv             readlink   su          wdctl         zless
bzdiff   chgrp         dnsdomainname  gzexe     login     nano           rm         sync        which         zmore
bzegrep  chmod         domainname     gzip      ls        netstat        rmdir      tar         ypdomainname  znew
bzexe    chown         echo           hostname  lsblk     nisdomainname  rnano      tempfile    zcat
bzfgrep  cp            egrep          kill      mkdir     pidof          run-parts  touch       zcmp
bzgrep   dash          false          less      mknod     ping           sed        true        zdiff
bzip2    date          fgrep          lessecho  mktemp    ping6          sh         umount      zegrep
theia@theia-vuxminhan:/home/project$ ls /bin/ls
/bin/ls
theia@theia-vuxminhan:/home/project$ ls /bin/b*
/bin/bash     /bin/bzcat  /bin/bzdiff   /bin/bzexe    /bin/bzgrep  /bin/bzip2recover  /bin/bzmore
/bin/bunzip2  /bin/bzcmp  /bin/bzegrep  /bin/bzfgrep  /bin/bzip2   /bin/bzless
theia@theia-vuxminhan:/home/project$ ls /bin/*r
/bin/bzip2recover  /bin/dir  /bin/fuser  /bin/mkdir  /bin/rmdir  /bin/tar  /bin/vdir
theia@theia-vuxminhan:/home/project$ ls -l
total 0
theia@theia-vuxminhan:/home/project$ theia@theia-vuxminhan:/home/project$ pwd
/home/project
theia@theia-vuxminhan:/home/project$ ls
theia@theia-vuxminhan:/home/project$ ls /bin
bash     bzip2recover  dd             findmnt   lessfile  more           ps         sh.distrib  uname         zfgrep
bunzip2  bzless        df             fuser     lesskey   mount          pwd        sleep       uncompress    zforce
bzcat    bzmore        dir            grep      lesspipe  mountpoint     rbash      stty        vdir          zgrep
bzcmp    cat           dmesg          gunzip    ln        mv             readlink   su          wdctl         zless
bzdiff   chgrp         dnsdomainname  gzexe     login     nano           rm         sync        which         zmore
bzegrep  chmod         domainname     gzip      ls        netstat        rmdir      tar         ypdomainname  znew
bzexe    chown         echo           hostname  lsblk     nisdomainname  rnano      tempfile    zcat
bzfgrep  cp            egrep          kill      mkdir     pidof          run-parts  touch       zcmp
bzgrep   dash          false          less      mknod     ping           sed        true        zdiff
bzip2    date          fgrep          lessecho  mktemp    ping6          sh         umount      zegrep
theia@theia-vuxminhan:/home/project$ ls /bin/ls
/bin/ls
theia@theia-vuxminhan:/home/project$ ls /bin/b*
/bin/bash     /bin/bzcat  /bin/bzdiff   /bin/bzexe    /bin/bzgrep  /bin/bzip2recover  /bin/bzmore
/bin/bunzip2  /bin/bzcmp  /bin/bzegrep  /bin/bzfgrep  /bin/bzip2   /bin/bzless
theia@theia-vuxminhan:/home/project$ ls /bin/*r
/bin/bzip2recover  /bin/dir  /bin/fuser  /bin/mkdir  /bin/rmdir  /bin/tar  /bin/vdir
theia@theia-vuxminhan:/home/project$ ls -l
total 0
theia@theia-vuxminhan:/home/project$ ls -la /etc
total 680
drwxr-xr-x 1 root     root      4096 Feb 27  2023 .
drwxr-xr-x 1 root     root      4096 Sep 15 13:32 ..
-rw-r--r-- 1 root     root      3028 Jan 26  2023 adduser.conf
drwxr-xr-x 1 root     root      4096 Feb 27  2023 alternatives
drwxr-xr-x 3 root     root      4096 Feb 27  2023 apparmor
drwxr-xr-x 1 root     root      4096 Feb 27  2023 apparmor.d
drwxr-xr-x 1 root     root      4096 Feb 27  2023 apt
-rw-r--r-- 1 root     root      2319 Feb 27  2023 bash.bashrc
drwxr-xr-x 2 root     root      4096 Feb 27  2023 bash_completion.d
-rw-r--r-- 1 root     root       367 Jan 27  2016 bindresvport.blacklist
drwxr-xr-x 3 root     root      4096 Feb 27  2023 ca-certificates
-rw-r--r-- 1 root     root      5432 Feb 27  2023 ca-certificates.conf
drwxr-xr-x 2 root     root      4096 Feb 27  2023 calendar
drwxr-xr-x 3 root     root      4096 Feb 27  2023 cassandra
drwxr-xr-x 2 root     root      4096 Jan 26  2023 cloud
drwxr-xr-x 1 root     root      4096 Feb 27  2023 cron.d
drwxr-xr-x 1 root     root      4096 Feb 27  2023 cron.daily
drwxr-xr-x 2 root     root      4096 Feb 27  2023 cron.hourly
drwxr-xr-x 2 root     root      4096 Feb 27  2023 cron.monthly
-rw-r--r-- 1 root     root       722 May 10  2022 crontab
drwxr-xr-x 1 root     root      4096 Feb 27  2023 cron.weekly
drwxr-xr-x 4 root     root      4096 Feb 27  2023 dbus-1
-rw-r--r-- 1 root     root      2969 Feb 28  2018 debconf.conf
-rw-r--r-- 1 root     root        11 Jun 25  2017 debian_version
drwxr-xr-x 1 root     root      4096 Feb 27  2023 default
-rw-r--r-- 1 root     root       604 Aug 13  2017 deluser.conf
drwxr-xr-x 3 root     root      4096 Feb 27  2023 dhcp
drwxr-xr-x 2 root     root      4096 Oct 21  2021 docker
drwxr-xr-x 1 root     root      4096 Feb 27  2023 dpkg
drwxr-xr-x 3 root     root      4096 Feb 27  2023 emacs
-rw-r--r-- 1 root     root       106 Jan 26  2023 environment
drwxr-xr-x 4 root     root      4096 Feb 27  2023 fonts
-rw-r--r-- 1 root     root        37 Jan 26  2023 fstab
-rw-r--r-- 1 root     root      2584 Feb  1  2018 gai.conf
drwxr-xr-x 3 root     root      4096 Feb 27  2023 gdb
drwxr-xr-x 2 root     root      4096 Feb 27  2023 groff
drwxr-xr-x 2 root     root      4096 Feb 27  2023 groovy
-rw-r--r-- 1 root     root       606 Feb 27  2023 group
-rw-r--r-- 1 root     root       598 Feb 27  2023 group-
-rw-r----- 1 root     shadow     503 Feb 27  2023 gshadow
-rw-r----- 1 root     shadow     495 Feb 27  2023 gshadow-
drwxr-xr-x 3 root     root      4096 Feb 27  2023 gss
-rw-r--r-- 1 root     root        92 Apr  9  2018 host.conf
-rw-r--r-- 1 root     root        19 Sep 15 13:32 hostname
-rw-r--r-- 1 root     root       266 Sep 15 13:32 hosts
drwxr-xr-x 1 root     root      4096 Feb 27  2023 init.d
-rw-r--r-- 1 root     root      1748 May 15  2017 inputrc
-rw-r--r-- 1 root     root        26 Sep  6  2021 issue
-rw-r--r-- 1 root     root        19 Sep  6  2021 issue.net
drwxr-xr-x 3 root     root      4096 Feb 27  2023 java
drwxr-xr-x 3 root     root      4096 Feb 27  2023 .java
drwxr-xr-x 5 root     root      4096 Feb 27  2023 java-11-openjdk
drwxr-xr-x 5 root     root      4096 Feb 27  2023 java-8-openjdk
drwxr-xr-x 1 root     root      4096 Jan 26  2023 kernel
drwxr-xr-x 2 root     root      4096 Feb 27  2023 ldap
-rw-r--r-- 1 root     root     38873 Feb 27  2023 ld.so.cache
-rw-r--r-- 1 root     root        34 Jan 27  2016 ld.so.conf
drwxr-xr-x 1 root     root      4096 Feb 27  2023 ld.so.conf.d
-rw-r--r-- 1 root     root       267 Apr  9  2018 legal
-rw-r--r-- 1 root     root       191 Feb  7  2018 libaudit.conf
drwxr-xr-x 4 root     root      4096 Feb 27  2023 lighttpd
-rw-r--r-- 1 root     root      2995 May  3  2022 locale.alias
-rw-r--r-- 1 root     root      9397 Feb 27  2023 locale.gen
lrwxrwxrwx 1 root     root        36 Feb 27  2023 localtime -> /usr/share/zoneinfo/America/New_York
drwxr-xr-x 3 root     root      4096 Feb 27  2023 logcheck
-rw-r--r-- 1 root     root     10550 Jan 25  2018 login.defs
-rw-r--r-- 1 root     root       703 Aug 21  2017 logrotate.conf
drwxr-xr-x 1 root     root      4096 Feb 27  2023 logrotate.d
-rw-r--r-- 1 root     root       105 Sep  6  2021 lsb-release
-rw-r--r-- 1 root     root         0 Jan 26  2023 machine-id
-rw-r--r-- 1 root     root       111 May 12  2020 magic
-rw-r--r-- 1 root     root       111 May 12  2020 magic.mime
-rw-r--r-- 1 root     root      2621 Feb 27  2023 mailcap
-rw-r--r-- 1 root     root       449 Jul 15  2016 mailcap.order
-rw-r--r-- 1 root     root      5174 Aug  4  2018 manpath.config
-rw-r--r-- 1 root     root     24301 Jul 15  2016 mime.types
-rw-r--r-- 1 root     root       812 Mar 24  2018 mke2fs.conf
-rw-r--r-- 1 root     root      2154 Mar 22  2019 mongodb.conf
-rw-r--r-- 1 root     root      9048 Feb 13  2018 nanorc
drwxr-xr-x 2 root     root      4096 Dec 25  2016 network
drwxr-xr-x 3 root     root      4096 Feb 27  2023 NetworkManager
-rw-r--r-- 1 root     root        91 Apr  9  2018 networks
-rw-r--r-- 1 root     root       497 Oct  5  2016 nsswitch.conf
-rw-r--r-- 1 root     root      2517 Aug 17  2020 ntp.conf
drwxr-xr-x 2 root     root      4096 Jan 26  2023 opt
lrwxrwxrwx 1 root     root        21 Sep  6  2021 os-release -> ../usr/lib/os-release
-rw-r--r-- 1 root     root       552 Apr  4  2018 pam.conf
drwxr-xr-x 1 root     root      4096 Feb 27  2023 pam.d
-rw-r--r-- 1 root     root      1279 Feb 27  2023 passwd
-rw-r--r-- 1 root     root      1252 Feb 27  2023 passwd-
drwxr-xr-x 4 root     root      4096 Feb 27  2023 perl
drwxr-xr-x 1 root     root      4096 Feb 27  2023 php
drwxr-xr-x 3 root     root      4096 Feb 27  2023 pm
drwxr-xr-x 3 postgres postgres  4096 Feb 27  2023 postgresql
drwxr-xr-x 3 root     root      4096 Feb 27  2023 postgresql-common
-rw-r--r-- 1 root     root       581 Feb 27  2023 profile
drwxr-xr-x 1 root     root      4096 Feb 27  2023 profile.d
-rw-r--r-- 1 root     root      2932 Dec 25  2016 protocols
-rw------- 1 root     root         0 Jan 26  2023 .pwd.lock
drwxr-xr-x 2 root     root      4096 Feb 27  2023 python
drwxr-xr-x 2 root     root      4096 Feb 27  2023 python2.7
drwxr-xr-x 2 root     root      4096 Feb 27  2023 python3
drwxr-xr-x 2 root     root      4096 Feb 27  2023 python3.6
drwxr-xr-x 2 root     root      4096 Feb 27  2023 python3.8
drwxr-xr-x 1 root     root      4096 Feb 27  2023 rc0.d
drwxr-xr-x 1 root     root      4096 Feb 27  2023 rc1.d
drwxr-xr-x 1 root     root      4096 Feb 27  2023 rc2.d
drwxr-xr-x 1 root     root      4096 Feb 27  2023 rc3.d
drwxr-xr-x 1 root     root      4096 Feb 27  2023 rc4.d
drwxr-xr-x 1 root     root      4096 Feb 27  2023 rc5.d
drwxr-xr-x 1 root     root      4096 Feb 27  2023 rc6.d
drwxr-xr-x 1 root     root      4096 Feb 27  2023 rcS.d
-rw-r--r-- 1 root     root       115 Sep 15 13:32 resolv.conf
-rwxr-xr-x 1 root     root       268 Jul 21  2017 rmt
-rw-r--r-- 1 root     root       887 Dec 25  2016 rpc
-rw-r--r-- 1 root     root      4141 Jan 25  2018 securetty
drwxr-xr-x 1 root     root      4096 Jan 26  2023 security
drwxr-xr-x 2 root     root      4096 Jan 26  2023 selinux
-rw-r--r-- 1 root     root     10368 Mar 31  2022 sensors3.conf
drwxr-xr-x 2 root     root      4096 Feb 27  2023 sensors.d
-rw-r--r-- 1 root     root     19183 Dec 25  2016 services
-rw-r----- 1 root     shadow     675 Feb 27  2023 shadow
-rw-r----- 1 root     shadow     675 Feb 27  2023 shadow-
-rw-r--r-- 1 root     root        73 Jan 26  2023 shells
drwxr-xr-x 2 root     root      4096 Jan 26  2023 skel
drwxr-xr-x 2 root     root      4096 Feb 27  2023 ssh
drwxr-xr-x 1 root     root      4096 Feb 27  2023 ssl
-rw-r--r-- 1 root     root        19 Feb 27  2023 subgid
-rw-r--r-- 1 root     root         0 Jan 26  2023 subgid-
-rw-r--r-- 1 root     root        19 Feb 27  2023 subuid
-rw-r--r-- 1 root     root         0 Jan 26  2023 subuid-
-r--r----- 1 root     root       784 Feb 27  2023 sudoers
drwxr-xr-x 2 root     root      4096 Feb 27  2023 sudoers.d
-rw-r--r-- 1 root     root      2683 Jan 17  2018 sysctl.conf
drwxr-xr-x 1 root     root      4096 Feb 27  2023 sysctl.d
drwxr-xr-x 2 root     root      4096 Feb 27  2023 sysstat
drwxr-xr-x 1 root     root      4096 Oct 25  2017 systemd
drwxr-xr-x 2 root     root      4096 Jan 26  2023 terminfo
-rw-r--r-- 1 root     root        17 Feb 27  2023 timezone
-rw-r--r-- 1 root     root      1260 Feb 25  2018 ucf.conf
drwxr-xr-x 3 root     root      4096 Feb 27  2023 ufw
drwxr-xr-x 1 root     root      4096 Feb 27  2023 update-motd.d
-rw-r--r-- 1 root     root      4942 Apr  8  2019 wgetrc
drwxr-xr-x 1 root     root      4096 Feb 27  2023 X11
drwxr-xr-x 3 root     root      4096 Feb 27  2023 xdg
drwxr-xr-x 3 root     root      4096 Feb 27  2023 xml
theia@theia-vuxminhan:/home/project$ mkdir scripts
theia@theia-vuxminhan:/home/project$ ls
scripts
theia@theia-vuxminhan:/home/project$ cd scripts
theia@theia-vuxminhan:/home/project/scripts$ pwd
/home/project/scripts
theia@theia-vuxminhan:/home/project/scripts$ cd
theia@theia-vuxminhan:~$ pwd
/home/theia
theia@theia-vuxminhan:~$ cd ..
theia@theia-vuxminhan:/home$ cd
theia@theia-vuxminhan:~$ touch myfile.txt
theia@theia-vuxminhan:~$ ls
docker-compose  gen-webpack.config.js  myfile.txt    plugins    skills-network-extension-v0.1.0.tgz  yarn.lock
dsdriver        javasharedresources    node_modules  postgres   src-gen
entrypoint.sh   lib                    package.json  README.md  webpack.config.js
theia@theia-vuxminhan:~$ touch myfile.txt
theia@theia-vuxminhan:~$ date -r myfile.txt
theia@theia-vuxminhan:~$ mv user-info.txt /tmp
theia@theia-vuxminhan:~$ ls
docker-compose  gen-webpack.config.js  node_modules  postgres                             src-gen
dsdriver        javasharedresources    package.json  README.md                            webpack.config.js
entrypoint.sh   lib                    plugins       skills-network-extension-v0.1.0.tgz  yarn.lock
theia@theia-vuxminhan:~$ ls -l /tmp
total 13416
drwxr-xr-x 2 theia theia     4096 Sep 15 13:32 40eee783-79ff-459c-9688-3e8af44c8ca0
drwxr-xr-x 2 theia theia     4096 Sep 15 13:32 github-remote
-rw-r--r-- 1 theia theia 13701452 Feb 27  2023 helm-v3.6.1-linux-amd64.tar.gz
drwxr-xr-x 2 root  root      4096 Feb 27  2023 hsperfdata_root
drwxr-xr-x 2 theia theia     4096 Sep 15 13:32 http-remote
drwxr-xr-x 2 theia theia     4096 Feb 27  2023 linux-amd64
drwxr-xr-x 2 theia theia     4096 Sep 15 13:32 theia_upload
-rw-r--r-- 1 theia theia        0 Sep 15 13:45 user-info.txt
srwxr-xr-x 1 theia theia        0 Sep 15 13:39 vscode-git-cf1816fa35.sock
drwxr-xr-x 2 theia theia     4096 Sep 15 13:38 vscode-typescript1000
drwxr-xr-x 2 theia theia     4096 Sep 15 13:32 yarn--1694799154736-0.5292379333269119
theia@theia-vuxminhan:~$ cp /tmp/user-info.txt user-info.txt
theia@theia-vuxminhan:~$ ls
docker-compose  gen-webpack.config.js  node_modules  postgres                             src-gen            yarn.lock
dsdriver        javasharedresources    package.json  README.md                            user-info.txt
entrypoint.sh   lib                    plugins       skills-network-extension-v0.1.0.tgz  webpack.config.js
theia@theia-vuxminhan:~$ cp /etc/passwd users.txt
theia@theia-vuxminhan:~$ ls
docker-compose  gen-webpack.config.js  node_modules  postgres                             src-gen        webpack.config.js
dsdriver        javasharedresources    package.json  README.md                            user-info.txt  yarn.lock
entrypoint.sh   lib                    plugins       skills-network-extension-v0.1.0.tgz  users.txt
```