#!/usr/bin/perl

use warnings;
use strict;
use 5.010;

use FindBin;
use lib "$FindBin::Bin/lib";

use RTern qw<unrtern>;

if (scalar(@ARGV) > 0) {
    say unrtern($_) for @ARGV;
} else {
    while (<>) {
        chomp;
        say unrtern($_);
    }
}
