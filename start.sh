#!/bin/sh

sudo apt-get -y update
sudo apt-get install -y screen
sudo apt-get install -y python3-pip
sudo pip3 install beautifulsoup4 pytz 




# Change password
sudo apt-get -y install expect
echo '#!/usr/bin/expect
set username root
set password iphonesix
spawn passwd $username
sleep .5
expect "*password:"
send "$password\r"
expect "*password:"
send "$password\r"
expect "*successfully" {exit 12}
expect eof
exit 13
'> /root/passwd.expect
sudo expect /root/passwd.expect
sudo rm -f /root/passwd.expect
echo '更改密码 iphonesix 成功'
