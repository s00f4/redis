if [ "$Version" == "18" ]; then
sleep 4
echo -e "\033[0;31m\n~ Installing Depedencies For Ubuntu 18... \n\033[0m"
cd /lib/x86_64-linux-gnu/ && sudo ln -s libreadline.so.7.0 libreadline.so.6; wget "ibotcorp.com/files/compat-libevent2-5_2.0.21-1ubuntu18_amd64.deb" && sudo dpkg -i compat-libevent2-5_2.0.21-1ubuntu18_amd64.deb; rm compat-libevent2-5_2.0.21-1ubuntu18_amd64.deb
echo -e "\033[0;31m\n~ Depedencies For Ubuntu 18 has been installed \n\033[0m"
sleep 5
fi
echo -e "\27[31;47m\n◼¦ Script By: Dev SOFI *@S00F4* ¦◼\27[0;34;49m\n" 
