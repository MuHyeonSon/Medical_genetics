#hw6

#!/usr/bin/perl
use strict;
use warnings;

my $f_in =shift;

open(F,"$f_in");
while(<F>){
	chomp;
	my @ar = split(":",$_);
	my $min = MIN_EXP($ar[1]);
	print $ar[0]."\t".$mi"n\n";
}
close(F);

sub MIN_EXP{
	my @ar_exp = split(/,/,$_[0]);
	my @sorted_ar = (sort{$a<=>$b} @ar_exp);
	return($sorted_ar[0]);
}













reference_sub(\@Brain,\@Heart,\@Lung);

print "$Brain[0],$Heart[0],$Lung[0]\n";

sub reference_sub{
   my ($Brain,$Heart,$Lung) = @_;
    my$Brain (sort{$a<=>$b}@$Brain);
    my$Heart (sort{$a<=>$b}@$Heart);
    my$Lung (sort{$a<=>$b}@$Lung);
   @$Brain[0]=$Brain;
   @$Heart[0]=$Heart;
   @$Lung[0] =$Lung;
}
