#!/usr/bin/env perl

use strict;
use warnings;

use Path::Tiny qw( path );

my @lines = grep { $_ && !m{\A//} }
    path('public_suffix_list.dat')->lines( { chomp => 1 } );

path('public-suffix-list.txt')->spew( map { "$_\n" } @lines );
