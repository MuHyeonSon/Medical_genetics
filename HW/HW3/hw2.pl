# HW3-hw.2 201804594 손무현

#!/usr/bin/perl
use strict;
use warnings;

print"Enter the gene you want to find.","\n";
my $gene = <STDIN>;
chomp($gene);
$gene = uc($gene);
if($gene ne 'IBD7' && $gene ne 'AGRN' && $gene ne 'TNFRSF4' && $gene ne 'DVL1'&&$gene ne 'ATAD2C' && $gene ne 'WARP')
{print $gene, " does not exist.";
 exit;
}  
$gene = uc($gene);

my @gennes = qw(IBD7 AGRN TNFRSF4 DVL1 ATAD2C WARP);
@gennes = (sort{$a cmp $b} @gennes);

my $f = 0;
my $b = @gennes-1 ;
my $index = 0;
	while($f<=$b){
	my $num = int(($f+$b)/2);
        if($gennes[$num] lt $gene)
	{$f = $num+1;
	}
        elsif($gennes[$num] gt $gene)
	{$b = $num-1;
  	}
	else{
	 $index = $num;
         last;
	}
       }
print("the index of ",$gene," is ",$index,"\n");
      





