# c03ex02.raku

print "Entre valor do raio: ";
my $R = prompt();

my $A = pi * $R ** 2;

printf "Resultado = %.2f\n\n", $A;

print "Tecle <Enter> para encerrar... ";
prompt();
