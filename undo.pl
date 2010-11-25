#!/usr/bin/perl

use warnings;
use strict;
use 5.010;

# Convert channel-format numbers to Earth format.

sub undo {
    my $num = shift;
    my @digits = split //, $num;
    my $output = 0;
    my $power = 1;
    for my $digit (@digits) {
        $output += ($digit * $power);
        $power *= 3;
    }
    return $output;
}

while (<>) {
    chomp;
    say undo($_);
}
