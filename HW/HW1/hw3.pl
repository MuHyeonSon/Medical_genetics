#!/usr/bin/perl
use strict;
use warnings;

# 입력받은 string을 저장할 변수 선언
my $input = <>;
chomp $input;

# reverse함수를 사용해 string의 문자열의 순서를 역으로 바꾼다.
my $reinput = reverse $input;

# 조건문을 사용해 palindrome인지의 여부를 판단한다.
if($input eq $reinput){
   print "$reinput\n";
}

else{
    print "\"$input\" is not a palindrome";
}


