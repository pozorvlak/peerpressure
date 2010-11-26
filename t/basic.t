#! /usr/bin/perl

use strict;
use warnings;

use Test::More;
use RTern qw<rtern unrtern>;

my @cases = (
    [0,   '0'],
    [1,   '1'],
    [2,   '2'],
    [3,  '01'],
    [4,  '11'],
    [5,  '21'],
    [6,  '02'],
    [7,  '12'],
    [8,  '22'],
    [9, '001'],
    [876586, '1100112112211'],
);

plan tests => 2 * @cases;

for my $case (@cases) {
    my ($num, $str, %opt) = @$case;
  TODO: {
        local $TODO = $opt{todo}{rtern};
        is(rtern($num), $str, "rtern($num) returns $str");
    }
  TODO: {
        local $TODO = $opt{todo}{unrtern};
        is(unrtern($str), $num, "unrtern($str) returns $num");
    }
}

done_testing();
