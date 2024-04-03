# c06ex01.pl

#!/usr/bin/perl

use strict;
use warnings;

my @MD;

my $SOMA = 0;
for (my $I = 1; $I <= 8; $I++) {
  printf "Entre a media do aluno $I: ";
  chomp($MD[$I] = <STDIN>);

  $SOMA = $SOMA + $MD[$I];
}

my $MEDIA = $SOMA / 8;

print "\n";
printf "Media geral: %5.2f\n", $MEDIA;

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
