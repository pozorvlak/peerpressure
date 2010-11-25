#!/usr/bin/perl

# Script written for the short story "Peer Pressure"
# (working title "First Contact").

use strict;
use warnings;
use 5.010;

# Reverse ternary representation
sub rtern {
    my $num = shift;
    my @digits;
    while ($num > 0) {
        my $digit = $num % 3;
        push @digits, $digit;
        $num = ($num - $digit) / 3;
    }
    return @digits;
}

if (scalar(@ARGV) > 0) {
    say rtern($_) for @ARGV;
} else {
    while (<>) {
        say rtern($_);
    }
}
