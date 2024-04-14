# c06ex04.raku

print "Entre a quantidade de elementos da matriz: ";
my $N = prompt();
say "";

my (@A, $I);

loop ($I = 1; $I <= $N; $I++) {
  printf "Entre o %3do. nome: ", $I;
  @A[$I] = prompt();
}

say "";
print "Foram fornecidos os nomes:\n";
say "";

loop ($I = 1; $I <= $N; $I++) {
  printf "Nome %3d = %s\n", $I, @A[$I];
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
