#hw4

#!/usr/bin/perl
use strict;
use warnings;

# 두 개의 홀수인 숫자를  입력 받는다.
my $odd1 = <>;
chomp $odd1;
my $odd2 = <>;
chomp $odd2;

# 입력받은 숫자가 홀수가 아닐 경우 경고문을 출력하고 종료한다.
if($odd1%2 == 0 || $odd2%2 ==0){
      print"입력하신 숫자는 홀수 가 아닙니다.";
      exit;
}

my$i;

# 조건문을 사용하여 입력받은 두 숫자와 그 사이에 있는 홀수인 숫자들을 모두 출력한다.
if($odd1<$odd2){

 for($i=$odd1; $i<=$odd2 ;$i+=2 ){
        print"$i"
}
}
elsif($odd2<$odd1){
  for($i=$odd2; $i<=$odd1 ;$i+=2 ){
        print"$i"  
}
}
else
{print " 두 숫자 사이에 홀수가 존재하지 않습니다.";} 
 
print"\n";
