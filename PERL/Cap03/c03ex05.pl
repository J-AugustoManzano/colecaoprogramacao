# c03ex05.pl 

#!/usr/bin/perl

use strict;
use warnings;

print "Entre seu nome: ";
my $NOME = <STDIN>;
chomp($NOME);

printf "Ola, %s! Bem-vindo ao estudo de Perl.\n\n", $NOME;

print "Tecle <Enter> para encerrar... ";
<STDIN>;
