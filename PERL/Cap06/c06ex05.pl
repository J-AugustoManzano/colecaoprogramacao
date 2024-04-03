# c06ex05.pl

#!/usr/bin/perl

my @NOMES = ("João", "Maria", "Pedro");

foreach my $NOME (@NOMES) {
  print "Olá, $NOME.\n";
}

print "\n";
print "Tecle <Enter> para encerrar... ";
<STDIN>;
