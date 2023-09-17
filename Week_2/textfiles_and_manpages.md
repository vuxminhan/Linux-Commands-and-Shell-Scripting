```
#interacting with text files
theia@theia-vuxminhan:/home/project$ cd ~
theia@theia-vuxminhan:~$ ls
docker-compose  gen-webpack.config.js  node_modules  postgres                             src-gen
dsdriver        javasharedresources    package.json  README.md                            webpack.config.js
entrypoint.sh   lib                    plugins       skills-network-extension-v0.1.0.tgz  yarn.lock
theia@theia-vuxminhan:~$ cat entrypoint.sh
#!/bin/bash

if [ -f "$IBMCLOUD_API_KEY_LOCATION" ]; then
  export IBMCLOUD_API_KEY=$(cat $IBMCLOUD_API_KEY_LOCATION)
fi

if [[ ! -z ${IBMCLOUD_API_KEY+x} && "${PRELAUNCH_K8S}" == "true"  ]]; then
  ibmcloud login -r us-south

  echo "Waiting for ${DOCKER_CERT_PATH}/ca.pem"
  timeout=5
  until [ -f ${DOCKER_CERT_PATH}/ca.pem ]
  do
    if [ "$timeout" == 0 ]; then
      echo "ERROR: Timeout while waiting for the file ${DOCKER_CERT_PATH}/ca.pem"
      break
    fi
    sleep 2
    echo "waiting..."
    ((timeout--))
  done

  if [ "$timeout" != 0 ]; then
    echo "${DOCKER_CERT_PATH}/ca.pem found"
    ibmcloud cr login
  fi

  # Set SN_ICR_NAMESPACE for the user
  export SN_ICR_NAMESPACE=$(ibmcloud cr namespace-list | grep sn-labs- | xargs)

  # This will upsert the "icr" secret
  kubectl create secret docker-registry icr --docker-server=us.icr.io --docker-username=iamapikey --docker-password=$IBMCLOUD_API_KEY -o yaml --save-config --dry-run=client | kubectl apply -f -

  # Set the SN context
  export SN_KUBECTL_CONTEXT=$(kubectl config current-context)

  if [ -z ${SN_ICR_NAMESPACE+x} ]; then
    echo "ERROR: SN_ICR_NAMESPACE not set"
    exit 1
  fi
fi

if [ ! -z ${DHT+x} ]; then
  DHT_DECODED=$(echo $DHT | base64 -d)
  DHT_PARTS=(${DHT_DECODED//:/ })

  docker login -u ${DHT_PARTS[0]} -p ${DHT_PARTS[1]}
  kubectl create secret docker-registry dh --docker-server=index.docker.io/v2 --docker-username=${DHT_PARTS[0]} --docker-password=${DHT_PARTS[1]}
fi

chmod go-r /etc/kube/config

export MONGO_PASSWORD="$(echo "$RANDOM-$USERNAME-$RANDOM" | base64 | cut -c1-16)"
export CASSANDRA_PASSWORD="$(echo "$RANDOM-$USERNAME-$RANDOM" | base64 | cut -c1-16)"
export MYSQL_PASSWORD="$(echo "$RANDOM-$USERNAME-$RANDOM" | base64 | cut -c1-16)"
export POSTGRES_PASSWORD="$(echo "$RANDOM-$USERNAME-$RANDOM" | base64 | cut -c1-16)"
export PGPASSWORD="$POSTGRES_PASSWORD"
export AIRFLOW_PASSWORD="$(echo "$RANDOM-$USERNAME-$RANDOM" | base64 | cut -c1-16)"
export _AIRFLOW_WWW_USER_PASSWORD="$AIRFLOW_PASSWORD"

export PATH=$PATH:/home/theia/.local/bin

sudo service cron start

yarn theia start /home/project --hostname=0.0.0.0 --port=$THEIA_LOCAL_PORT
theia@theia-vuxminhan:~$ more entrypoint.sh
#!/bin/bash

if [ -f "$IBMCLOUD_API_KEY_LOCATION" ]; then
  export IBMCLOUD_API_KEY=$(cat $IBMCLOUD_API_KEY_LOCATION)
fi

if [[ ! -z ${IBMCLOUD_API_KEY+x} && "${PRELAUNCH_K8S}" == "true"  ]]; then
  ibmcloud login -r us-south

  echo "Waiting for ${DOCKER_CERT_PATH}/ca.pem"
  timeout=5
  until [ -f ${DOCKER_CERT_PATH}/ca.pem ]
  do
    if [ "$timeout" == 0 ]; then
      echo "ERROR: Timeout while waiting for the file ${DOCKER_CERT_PATH}/ca.pem"
      break
    fi
    sleep 2
    echo "waiting..."
    ((timeout--))
  done

  if [ "$timeout" != 0 ]; then
    echo "${DOCKER_CERT_PATH}/ca.pem found"
    ibmcloud cr login
  fi

  # Set SN_ICR_NAMESPACE for the user
  export SN_ICR_NAMESPACE=$(ibmcloud cr namespace-list | grep sn-labs- | xargs)

  # This will upsert the "icr" secret
  kubectl create secret docker-registry icr --docker-server=us.icr.io --docker-username=iamapikey --docker-password=$IBMCLOUD
_API_KEY -o yaml --save-config --dry-run=client | kubectl apply -f -

  # Set the SN context
  export SN_KUBECTL_CONTEXT=$(kubectl config current-context)

  if [ -z ${SN_ICR_NAMESPACE+x} ]; then
    echo "ERROR: SN_ICR_NAMESPACE not set"
    exit 1
  fi
fi

if [ ! -z ${DHT+x} ]; then
  DHT_DECODED=$(echo $DHT | base64 -d)
  DHT_PARTS=(${DHT_DECODED//:/ })

  docker login -u ${DHT_PARTS[0]} -p ${DHT_PARTS[1]}
  kubectl create secret docker-registry dh --docker-server=index.docker.io/v2 --docker-username=${DHT_PARTS[0]} --docker-pass
word=${DHT_PARTS[1]}
fi

chmod go-r /etc/kube/config

export MONGO_PASSWORD="$(echo "$RANDOM-$USERNAME-$RANDOM" | base64 | cut -c1-16)"
export CASSANDRA_PASSWORD="$(echo "$RANDOM-$USERNAME-$RANDOM" | base64 | cut -c1-16)"
export MYSQL_PASSWORD="$(echo "$RANDOM-$USERNAME-$RANDOM" | base64 | cut -c1-16)"
export POSTGRES_PASSWORD="$(echo "$RANDOM-$USERNAME-$RANDOM" | base64 | cut -c1-16)"
export PGPASSWORD="$POSTGRES_PASSWORD"
export AIRFLOW_PASSWORD="$(echo "$RANDOM-$USERNAME-$RANDOM" | base64 | cut -c1-16)"
export _AIRFLOW_WWW_USER_PASSWORD="$AIRFLOW_PASSWORD"

export PATH=$PATH:/home/theia/.local/bin

sudo service cron start

yarn theia start /home/project --hostname=0.0.0.0 --port=$THEIA_LOCAL_PORT
theia@theia-vuxminhan:~$ less entrypoint.sh
theia@theia-vuxminhan:~$ cd /home/project
theia@theia-vuxminhan:/home/project$ wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
--2023-09-16 06:38:00--  https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Bash%20Scripting/usdoi.txt
Resolving cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud (cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud)... 169.63.118.104
Connecting to cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud (cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud)|169.63.118.104|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 8121 (7.9K) [text/plain]
Saving to: ‘usdoi.txt’

usdoi.txt                       100%[====================================================>]   7.93K  --.-KB/s    in 0s      

2023-09-16 06:38:00 (1.26 GB/s) - ‘usdoi.txt’ saved [8121/8121]

theia@theia-vuxminhan:/home/project$ ls
usdoi.txt
theia@theia-vuxminhan:/home/project$ head usdoi.txt
The unanimous Declaration of the thirteen united States of America, When in the
Course of human events, it becomes necessary for one people to dissolve the
political bands which have connected them with another, and to assume among the
powers of the earth, the separate and equal station to which the Laws of Nature
and of Nature's God entitle them, a decent respect to the opinions of mankind
requires that they should declare the causes which impel them to the
separation.

We hold these truths to be self-evident, that all men are created equal, that
they are endowed by their Creator with certain unalienable Rights, that among
theia@theia-vuxminhan:/home/project$ head -3 usdoi.txt
The unanimous Declaration of the thirteen united States of America, When in the
Course of human events, it becomes necessary for one people to dissolve the
political bands which have connected them with another, and to assume among the
theia@theia-vuxminhan:/home/project$ tail usdoi.txt
People of these Colonies, solemnly publish and declare, That these United
Colonies are, and of Right ought to be Free and Independent States; that they
are Absolved from all Allegiance to the British Crown, and that all political
connection between them and the State of Great Britain, is and ought to be
totally dissolved; and that as Free and Independent States, they have full
Power to levy War, conclude Peace, contract Alliances, establish Commerce, and
to do all other Acts and Things which Independent States may of right do. And
for the support of this Declaration, with a firm reliance on the protection of
divine Providence, we mutually pledge to each other our Lives, our Fortunes and
our sacred Honor.
theia@theia-vuxminhan:/home/project$ tail -2 usdoi.txt
divine Providence, we mutually pledge to each other our Lives, our Fortunes and
our sacred Honor.
theia@theia-vuxminhan:/home/project$ wc usdoi.txt
 152 1330 8121 usdoi.txt
theia@theia-vuxminhan:/home/project$ wc -l usdoi.txt
152 usdoi.txt
theia@theia-vuxminhan:/home/project$ wc -w usdoi.txt
1330 usdoi.txt
theia@theia-vuxminhan:/home/project$ wc -c usdoi.txt
8121 usdoi.txt
theia@theia-vuxminhan:/home/project$ sort usdoi.txt

# interacting with manual pages
theia@theia-vuxminhan:/home/project$ whoami
theia
theia@theia-vuxminhan:/home/project$ who
theia@theia-vuxminhan:/home/project$ uname
Linux
theia@theia-vuxminhan:/home/project$ uname -a
Linux theia-vuxminhan 5.4.0-162-generic #179-Ubuntu SMP Mon Aug 14 08:51:31 UTC 2023 x86_64 x86_64 x86_64 GNU/Linux
theia@theia-vuxminhan:/home/project$ id
uid=1000(theia) gid=1000(theia) groups=1000(theia),27(sudo),100(users)
theia@theia-vuxminhan:/home/project$ df
Filesystem     1K-blocks     Used Available Use% Mounted on
overlay        101986876 59609852  37956788  62% /
tmpfs              65536        0     65536   0% /dev
tmpfs           16361368        0  16361368   0% /sys/fs/cgroup
/dev/vda2      101986876 59609852  37956788  62% /etc/hosts
shm                65536        0     65536   0% /dev/shm
tmpfs           28938032       16  28938016   1% /run/secrets/kubernetes.io/serviceaccount
tmpfs           16361368        0  16361368   0% /proc/acpi
tmpfs           16361368        0  16361368   0% /proc/scsi
tmpfs           16361368        0  16361368   0% /sys/firmware
top - 13:07:21 up 1 day, 20:30,  0 users,  load average: 2.32, 1.79, 1.22
Tasks:  13 total,   1 running,  12 sleeping,   0 stopped,   0 zombie
top - 13:07:53 up 1 day, 20:30,  0 users,  load average: 1.65, 1.68, 1.21
Tasks:  13 total,   1 running,  12 sleeping,   0 stopped,   0 zombie
%Cpu(s):  1.4 us,  1.4 sy,  0.0 ni, 97.3 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st
KiB Mem : 32722736 total,  1375644 free,  4750364 used, 26596728 buff/cache
KiB Swap:        0 total,        0 free,        0 used. 27488400 avail Mem 

   PID USER      PR  NI    VIRT    RES    SHR S  %CPU %MEM     TIME+ COMMAND                                                 
     1 theia     20   0    4632    868    800 S   0.0  0.0   0:00.01 sh                                                      
     7 theia     20   0   12888   3244   2952 S   0.0  0.0   0:00.01 entrypoint.sh                                           
    35 root      20   0   31320   2932   2648 S   0.0  0.0   0:00.00 cron                                                    
    36 theia     20   0  863632  73492  32736 S   0.0  0.2   0:00.95 node                                                    
    47 theia     20   0    4640    896    820 S   0.0  0.0   0:00.00 sh                                                      
    48 theia     20   0  715812  98728  33192 S   0.0  0.3   0:00.86 node                                                    
    59 theia     20   0 1032656  88084  37668 S   0.0  0.3   0:03.43 node                                                    
    70 theia     20   0 1068408  49208  32768 S   0.0  0.2   0:01.49 node                                                    
    85 theia     20   0  868620  67836  34516 S   0.0  0.2   0:00.86 node                                                    
    95 theia     20   0   25312   7852   3532 S   0.0  0.0   0:00.49 bash                                                    
   102 theia     20   0   25312   7864   3544 S   0.0  0.0   0:00.49 bash                                                    
   523 theia     20   0  604900  43556  32576 S   0.0  0.1   0:00.14 node                                                    
   558 theia     20   0   41676   3656   3184 R   0.0  0.0   0:00.01 top                                                     

theia@theia-vuxminhan:/home/project$ echo "Welcome to the linux lab"
Welcome to the linux lab
theia@theia-vuxminhan:/home/project$ echo -e "This will be printed \nin two lines"
This will be printed 
in two lines
theia@theia-vuxminhan:/home/project$ date
Fri Sep 15 13:08:39 EDT 2023
theia@theia-vuxminhan:/home/project$ date "+%H"
13
theia@theia-vuxminhan:/home/project$ date "+%D"
09/15/23
theia@theia-vuxminhan:/home/project$ man ls
theia@theia-vuxminhan:/home/project$ man -k
```