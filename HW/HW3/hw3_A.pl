# HW3 hw3_A 201804594 손무현

#!/usr/bin/perl
use strict;
use warnings;

my $filename = $ARGV[0];
my $record = '';
my $dna = '';
unless (open(FILE,$filename)){
	print "Cannot open file \"$filename\"\n\n";
        exit;
}

$/ = "//\n";

$record = <FILE>;
$dna = $record;

nucleotide_percentage($dna);

sub nucleotide_percentage{
        my ($dna) = @_;
	my $countA = 0;
	my $countC = 0;
	my $countG = 0;
	my $countT = 0;
        my $length_of_dna = length($dna);

	$countA = ( $dna =~ tr/Aa//);
        $countC = ( $dna =~ tr/Cc//);
        $countG = ( $dna =~ tr/Gg//);
	$countT = ( $dna =~ tr/Tt//);

        my $percentA = int(($countA/$length_of_dna)*100);
        my $percentC = int(($countC/$length_of_dna)*100);
        my $percentG = int(($countG/$length_of_dna)*100);
        my $percentT = int(($countT/$length_of_dna)*100);
 
        print"A : ",$percentA," percent","\n\n\n";
        print"C : ",$percentC," percent","\n\n\n";
        print"G : ",$percentG," percent","\n\n\n";
        print"T : ",$percentT," percent","\n\n\n";
}
