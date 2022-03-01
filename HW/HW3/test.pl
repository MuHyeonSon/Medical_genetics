#!/usr/bin/perl
use strict;
use warnings;

"AAC\nGTT" =~/^.*$/m;
print $&, "\n";

print"======================\n";

"AAC\nGTT" =~/^.*$/s;
print $&, "\n";



