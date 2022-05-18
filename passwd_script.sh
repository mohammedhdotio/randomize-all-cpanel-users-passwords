#!/bin/bash
awk '{print $2}' /etc/userdomains | grep -v nobody | 
while 
	read username
		do
			whmapi1 passwd user=$username password=$(openssl rand -hex 20)
			/usr/local/cpanel/bin/servers_queue run
done
