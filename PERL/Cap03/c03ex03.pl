# c03ex03.pl 

#!/usr/bin/perl

use strict;
use warnings;

print "Entre quantidade de horas trabalhadas ..: ";
my $HT = <STDIN>;
chomp($HT);

print "Entre valor do salario-hora ............: ";
my $VH = <STDIN>;
chomp($VH);

print "Entre valor do percentual de desconto ..: ";
my $PD = <STDIN>;
chomp($PD);

my $SB = $HT * $VH;
my $TD = ($PD / 100) * $SB;
my $SL = $SB - $TD;

printf "\nSalario Bruto ....: %f\n", $SB;
printf "Salario Liquido ..: %f\n\n", $SL;

print "Tecle <Enter> para encerrar... ";
<STDIN>;
