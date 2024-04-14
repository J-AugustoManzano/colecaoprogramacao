# c03ex01.raku

print "Entre o 1o. valor numerico inteiro: ";
my $A = prompt();

print "Entre o 2o. valor numerico inteiro: ";
my $B = prompt();

my $X = $A.Int + $B.Int;

printf "Resultado = %d\n\n", $X;

print "Tecle <Enter> para encerrar... ";
prompt();
