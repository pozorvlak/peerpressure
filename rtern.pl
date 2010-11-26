#!/usr/bin/perl

# Script written for the short story "Peer Pressure"
# (working title "First Contact").

use strict;
use warnings;
use 5.010;

use FindBin;
use lib "$FindBin::Bin/lib";

use RTern qw<rtern>;

if (scalar(@ARGV) > 0) {
    say rtern($_) for @ARGV;
} else {
    while (<>) {
        say rtern($_);
    }
}
