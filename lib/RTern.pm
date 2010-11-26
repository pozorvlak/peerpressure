package RTern;

use strict;
use warnings;
use 5.010;

use Exporter qw<import>;
our @EXPORT_OK = qw<ui rtern unrtern>;

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
    my $str = shift;
    my $num = 0;
    for my $digit (reverse split //, $str) {
        $num *= 3;
        $num += $digit;
    }
    return $num;
}

sub ui {
    my ($function, @argv) = @_;
    if (@argv) {
        say $function->($_) for @argv;
    } else {
        while (my $line = <>) {
            chomp $line;
            say $function->($line);
        }
    }
}

1;
