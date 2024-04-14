# c06ex05.raku

my @NOMES = ("Joao", "Maria", "Pedro");

for @NOMES -> $NOME {
  say "Ola, $NOME.";
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
