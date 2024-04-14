# c04ex12.raku

print "Entre um numero inteiro: ";
my $N = prompt();

my $R4 = $N.Int % 4;
my $R5 = $N.Int % 5;

if ($R4 == 0 and $R5 == 0) {
  say "Resultado = $N";
} else {
  say "Valor nao e divisível por 4 e 5";
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
