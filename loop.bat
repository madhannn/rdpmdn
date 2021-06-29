CLS
@ECHO ON
poweroff wol -ip 192.168.0.3 -subnet 255.255.255.0 -mac 0xxxx00xxxxx
call wait 90
CLS
EXIT
