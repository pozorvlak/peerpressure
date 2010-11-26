package RTern;

use strict;
use warnings;

use Exporter qw<import>;
our @EXPORT_OK = qw<rtern unrtern>;

# Reverse ternary representation
sub rtern {
    my $num = shift;
    use integer;
    my @digits;
    do {
        push @digits, $num % 3;
    } while ($num /= 3) > 0;
    return join '', @digits;
}

# Convert channel-format numbers to Earth format.
sub unrtern {
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

1;
