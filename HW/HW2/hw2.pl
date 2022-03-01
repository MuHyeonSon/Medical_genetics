#hw2

#!/usr/bin/perl
use strict;
use warnings;

print " 숫자를 두 번 입력하고 연산자를 입력하시오\n";

# 두 숫자와 하나의 연산자를 입력받는다.
my $num1 =<>;
chomp $num1;
my $num2 =<>;
chomp $num2;
my $cal  =<>;
chomp $cal;
my $result;

# 조건문을 이용해 입력받은 연산자에 따른 두 숫자의 연산 결과를 출력한다.
if($cal eq '+'){
  $result  =  $num1 + $num2;
  print"$result\n"
  }
elsif($cal eq '-'){
  $result  =  $num1 - $num2;
  print"$result\n"
}
elsif($cal eq '*'){
  $result  =  $num1 * $num2;
  print"$result\n"
}
elsif($cal eq '/'){
  $result  =  $num1 / $num2;
  print"$result\n"
}
elsif($cal eq '%'){
  $result  =  $num1 % $num2;
  print"$result\n"
}
else{
 print"잘못 된 입력입니다.\n"
}
