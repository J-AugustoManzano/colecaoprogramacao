# c07ex04.pl

#!/usr/bin/perl

use strict;
use warnings;

sub FATORIAL {
  my ($N) = @_;
  my $FAT = 1;
  for (my $I = 1; $I <= $N; $I++) {
    $FAT = $FAT * $I;
  }
  print "Fatorial = $FAT\n";
}

print "Qual fatorial: ";
my $LIMITE = <STDIN>;
chomp $LIMITE;

FATORIAL($LIMITE);

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
