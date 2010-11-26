#!/usr/bin/perl

# Script written for the short story "Peer Pressure"
# (working title "First Contact").

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/lib";

use RTern qw<ui rtern>;

ui(\&rtern, @ARGV);
