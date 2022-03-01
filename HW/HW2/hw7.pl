#hw7

#!/usr/bin/perl
use strict;
use warnings;

print"홀수를 입력하시오.";

# 다이아몬드그림을 출력하기 위한 홀수인 숫자를 입력받는다.
my $number = <>;
chomp $number;

#입력받은 숫자가 홀수가 아닐 경우 경고문 출력하고 종료한다.
if($number%2 == 0){
print"입력하신 숫자는 홀수가 아닙니다.";
exit;
}

my$i;
my$j;

# for문을 통해 다이아몬드 그림을 출력시킨다.
for($i = 0;$i<$number; $i++){
 for($j =$number-1; $j>$i;$j--){
  print" ";
 }
 for($j=0;$j<2*$i+1;$j++){
  print"o";
 }
 print"\n";
} 
for($i = 1;$i<$number; $i++){
 for($j = 0; $j<$i;$j++){
  print" ";
 }
 for($j=2*$number-1;$j>2*$i;$j--){
  print"o";
 }
 print"\n";
}
