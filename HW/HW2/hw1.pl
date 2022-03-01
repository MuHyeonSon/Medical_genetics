#hw1

#!/usr/bin/perl
use strict;
use warnings;

# 사용자로부터 파일이름을 입력받는다.
my $inputfile = <>;
chomp $inputfile;
# 파일을 찾을 수 없을 시 경고문 출력 및 종료
unless(open(INPUT,$inputfile)){
  print "could not find $inputfile\n"; 
  exit;
}


 
  my @line = <INPUT>;
  chomp @line;
# 파일의 각 라인이 할당 되어 있는 array에서 원소를 꺼내온 후 문장 앞이나 끝에 존재하는 space나 tab을 제거한다.  
  foreach my $line_(@line){
    $line_ =~ s/\s//g;

   
   
  print "$line_\n";
 }
close(INPUT);


