#!/usr/bin/env perl

use strict;
use warnings;

use LWP::UserAgent ();
my $ua = LWP::UserAgent->new;

my $url      = 'https://publicsuffix.org/list/public_suffix_list.dat';
my $filename = 'public_suffix_list.dat';
$ua->mirror( $url, $filename );
