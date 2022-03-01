#hw5

#!/usr/bin/perl
use strict;
use warnings;


my $sum;
# while문을 사용해서 입력받은 숫자들의 합이 100을넘을 때까지 입력을 받는다.
while($sum<101){
my$i = <>;

# 입력받은 숫자들을 $sum이라는 변수에 계속해서 더하여 누적한다.
$sum += $i;
}
# 입력받은 숫자들의 합이 100을 넘게되면 반복문을 나오게되고 종료한다.
exit;
