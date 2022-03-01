#HW3-hw3_B 201804594 손무현

#!/usr/bin/perl
use strict;
use warnings;
use BeginPerlBioinfo;

my $dna = '';
my $record = '';
my $protein = '';
my $filename = $ARGV[0]; #입력받은 파일 저장

my $start = $ARGV[1]; #입력받은 CDS start position
my $end = $ARGV[2]; #입력받은 CDS end position
$start = $start-1; #입력하는 유저입장에서 인덱스가 1부터 시작인 것을 고려
$end = $end-1;

#파일 열지 못하면 경고문 출력
unless (open(FILE,$filename)){
	print "Cannot open file \"$filename\"\n\n";
	exit;
}

$/ = "//\n";
$record = <FILE>;
$record =~ s/[\s]//g;
$dna = $record; 

for($start; $start < $end ; $start += 3)
	{
	 $protein .= codon2aa( substr($dna,$start,3) ); #3개 씩 끊어서 아미노산으로 변환 후 결과들을 conatenate
}

print $protein,"\n\n\n";
print "The length of Protein sequence is ",length($protein),"\n";
