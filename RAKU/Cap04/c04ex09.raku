# c04ex09.raku

my ($P1, $P2);

say "Classificacao esportiva";
say "";
say "Entre '1' se atleta pontuou na 1a. prova";
say "Entre '1' se atleta pontuou na 2a. prova";
say "Qualquer outro valor se nao pontuou nas provas";
say "";

print "Prova 1: ";
$P1 = prompt();

print "Prova 2: ";
$P2 = prompt();

if ($P1 == 1 xor $P2 == 1) {
  say "Atleta participa da terceira prova.";
} else {
  say "Atleta nao participa da terceira prova.";
  if ($P1 == 1 and $P2 == 1) {
    say "Classificado para a final.";
  } else {
    say "Desclassificado da competicao.";
  }
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
