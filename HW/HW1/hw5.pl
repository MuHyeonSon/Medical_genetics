#!/usr/bin/perl
use strict;
use warnings;
# 입력받을 두 개의 숫자를 저장할 변수를 선언하고 using the chomp function to remove the newline
my $number1 = <>;
chomp $number1;
my $number2 = <>;
chomp $number2;
#입력받은 두 개의 숫자를 곱해서 저장할 변수를 선언한다.
my $mul = $number1 * $number2;

print "$mul\n";



