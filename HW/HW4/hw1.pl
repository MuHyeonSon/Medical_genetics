# 201804594 손무현 HW4 hw4.1 

#!/usr/bin/perl
use strict;
use warnings;
use BeginPerlBioinfo;

my $filename = <STDIN>;
chomp($filename);
my $ID = '';
my $sequence = '';

my $file = join('',get_file_data($filename));
my %FASTQ = ( );

while( $file =~ /^@.*\n(^[ACGT][ACGT]*)/gm) {
	my $value = $&;
	my $key = $value;
           $key =~ s/^.*_\d*:(U.*)\n.*/$1/s; 
	
	   $value =~ s/^.*\d*.*\n([ACGT]*)/$1/s;
	$FASTQ{$key} = $value;
     }
my $v = '';



foreach my $k (sort keys %FASTQ) {
   $v = $FASTQ{$k};
 print $k," : ",$v,"\n";
}

