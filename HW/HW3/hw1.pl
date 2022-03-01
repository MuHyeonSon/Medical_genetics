#HW3 hw.1 201804594 손무현
#!/usr/bin/perl

use strict;
use warnings;
use BeginPerlBioinfo;

my $filename = $ARGV[0];
my $record = '';
my $dna = '';
chomp $ARGV[1]; 
my $sequence = $ARGV[1]; # 임의의 sequence
$sequence = lc($sequence); #들어온 값을 일단 소문자로 다 바꿈
unless (open(GBFILE,$filename)){
	print "Cannot open GenBank file \"$filename\"\n\n";
	exit;
}

$/ = "//\n";

$record = <GBFILE>;

$record =~ s/\d//g;
$record =~ s/[\s\/]//g;
$dna = $record;

my $num_of_sequence = 0;
my $d = '';

for(my $pos=0; $pos<length($dna); $pos += length($sequence)){
    $d = substr($dna,$pos,length($sequence));
    if($d eq $sequence){$num_of_sequence += 1}
    else{next;}
} 

$sequence = uc($sequence);
print("The frequency of ",$sequence," is ",$num_of_sequence,"\n");
