#!/usr/bin/perl
use strict;
use warnings;

# 입력받을 반지름에 대한 변수를 선언한다.
my $rad = <>;
my $PI = 3.14159265358979;
my $cir = $rad * $PI * 2;

# 원주를 출력한다.
print"$cir\n";

