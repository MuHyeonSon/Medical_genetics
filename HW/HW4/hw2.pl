#!/usr/bin/perl
use strict;
use warnings;
use BeginPerlBioinfo;

my $filename = <STDIN>;
chomp ($filename);


my $file = join('',get_file_data($filename));


while( $file =~ /^@.*\n(^[ACGT][ACGT]*)/gm) { 
        
	my $value = $&;
	my $key = $value;
