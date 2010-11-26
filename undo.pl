#!/usr/bin/perl

use warnings;
use strict;

use FindBin;
use lib "$FindBin::Bin/lib";

use RTern qw<ui unrtern>;

ui(\&unrtern, @ARGV);
