#hw3

#!/usr/bin/perl
use strict;
use warnings;

#입력받은 문자열을 array의 각 원소로 할당한다.
my @string = <>;
chomp @string;

#array의 원소의 순서를 역순으로 바꿔준다.
@string = reverse(@string);

#for문을 통해 array의 원소들을 출력한다.
for(my $i = 0; $i <= $#string; $i++){

       my $str = $string[$i];
       print "$str\n";
}



