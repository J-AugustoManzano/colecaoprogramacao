# c04ex07.raku

print "Entre um numero inteiro: ";
my $numero = prompt();

if ($numero.Int >= 20 and $numero.Int <= 90) {
  say "O numero esta na faixa de 20 a 90.";
} else {
  say "O numero esta fora da faixa de 20 a 90.";
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
