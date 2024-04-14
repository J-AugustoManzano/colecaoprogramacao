# c06ex06.raku

print "Entre um numero para a tabuada: ";
my $N = prompt();

say "";

for 1..10 -> $I {
  my $R = $N * $I;
  printf "%3d X %2d = %3d\n", $N, $I, $R;
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
