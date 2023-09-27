#!/usr/bin/perl

use strict;
use warnings;
use Net::Telnet;

sub attemptTelnetCheck {
    my ($host,$port) = @_;

    my $t = new Net::Telnet(
        Errmode => 'return',
        Timeout => 2,
        Port    => $port
    );
    my $r = $t->open($host);
    if (defined $r) {
        $t->close();
        print("$host : SUCCESS!\n");
    } else {
        print("$host : failure. " . $t->errmsg() . "\n");
    }
}

my @hosts = (
    "mytorrent.retro-os.live"
);

for my $host (@hosts) {
    attemptTelnetCheck($host, 6969);
}
