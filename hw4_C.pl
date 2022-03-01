#!/usr/bin/perl
use strict;
use warnings;
my $rad = <>;
#만약 입력받은 수가 음수라면 반지름에 대한 변수에 0을 넣는다.
if($rad <0){
$rad = 0;}

my $pi = 3.14159265358979;
my $cir = $rad * $pi * 2;

#원주를 출력한다.
print"$cir\n";

