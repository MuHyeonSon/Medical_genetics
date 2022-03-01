#!/usr/bin/perl
use strict;
use warnings;

my @numbers = (1,5,3,9,7);

foreach my $num(sort{$a<=>$b}@numbers){
       print" $num\n";
}
