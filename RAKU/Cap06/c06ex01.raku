# c06ex01.raku

my @MD;

my $SOMA = 0;
loop (my $I = 1; $I <= 8; $I++) {
  printf "Entre a media do aluno $I: ";
  @MD[$I] = prompt();

  $SOMA = $SOMA + @MD[$I];
}

my $MEDIA = $SOMA / 8;

say "";
printf "Media geral: %5.2f\n", $MEDIA;

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
