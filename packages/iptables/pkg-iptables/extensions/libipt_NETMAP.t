:PREROUTING,INPUT,OUTPUT,POSTROUTING
*nat
-j NETMAP --to 1.2.3.0/24;=;OK
-j NETMAP --to 1.2.3.4;-j NETMAP --to 1.2.3.4/32;OK
