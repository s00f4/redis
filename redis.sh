echo -e "\n\nThis Script is written by: Dev SOFI @S00F4\n\n"

sleep 4

apt-get update -y

apt-get upgrade -y

echo -e "\n\ninstalling redis-server ......\n\n"

apt install redis-server -y

echo -e "\n\nTurning off redis-server ......\n\n"

/etc/init.d/redis-server stop

read -p "Enter the old server-ip-address -> " ip

echo -e "\n\nRunning scp command with -> $ip ip address\n\n"

sudo scp root@$ip:/var/lib/redis/dump.rdb /var/lib/redis/dump.rdb

echo -e "\n\nRestarting redis-server ......\n\n"

/etc/init.d/redis-server start

echo -e "\n\nDone Installing New Redis DB"

echo -e "\nAfter 5 Sec will run redis-cli keys test\n\n"

sleep 5

redis-cli keys "*"

echo -e "\27[31;47m\n◼¦ Script By: Dev SOFI *@S00F4* ¦◼\27[0;34;49m\n" 
