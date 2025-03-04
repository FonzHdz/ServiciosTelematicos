;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	parcial.alfonso.com. root.parcial.alfonso.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns.parcial.alfonso.com.
@	IN	A	192.168.50.3
ns	IN	A	192.168.50.3
server	IN	CNAME	ns
mail	IN 	CNAME	ns
www	IN	CNAME	ns
