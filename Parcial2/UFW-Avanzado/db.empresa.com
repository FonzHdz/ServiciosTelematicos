;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     empresa.com. root.empresa.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;
@       IN      NS      ns.empresa.com.
@    	IN      A       192.168.90.3
ns	IN      A   	192.168.90.3
www	IN      A       192.168.90.3
