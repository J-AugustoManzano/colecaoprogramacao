# c07ex06.pl

#!/usr/bin/perl

use strict;
use warnings;

sub FATORIAL {
  my ($N) = @_;
  my $FAT = 1;
  for (my $I = 1; $I <= $N; $I++) {
    $FAT = $FAT * $I;
  }
  return $FAT;
}

print "Qual fatorial: ";
my $LIMITE = <STDIN>;
chomp $LIMITE;

print "Fatorial = ", FATORIAL($LIMITE), "\n";

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
