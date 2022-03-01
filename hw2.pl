#!/usr/bin/perl
use strict;
use warnings;

# user에게서 파일을 입력받는다.
my $f_in = $ARGV[0];

my @ar_save = ();
open(F,$f_in);
while(<F>){
	chomp;
	push(@ar_save,$_);
}
close(F);

#  reverse
foreach my $refile(reverse @ar_save){

 print $refile "\n";
}
