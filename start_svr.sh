#!/bin/sh

squid -f /etc/squid.conf 
tail   -F /var/log/squid/access.log /var/log/squid/cache.log 

