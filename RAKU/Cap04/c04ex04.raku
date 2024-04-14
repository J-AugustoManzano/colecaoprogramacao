# c04ex04.raku

print "Entre a 1a. nota .......: ";
my $N1 = prompt();

print "Entre a 2a. nota .......: ";
my $N2 = prompt();

print "Entre a 3a. nota .......: ";
my $N3 = prompt();

print "Entre a 4a. nota .......: ";
my $N4 = prompt();

my $MD1 = ($N1 + $N2 + $N3 + $N4) / 4;

if ($MD1 >= 7) {
  print "\n";
  print "Aprovado\n";
  printf "Media: %.2f\n", $MD1;
} else {
  printf "Entre a nota de exame ..: ";
  my $NE = prompt();
  my $MD2 = ($MD1 + $NE) / 2;
  if ($MD2 >= 5) {
    print "\n";
    print "Aprovado em exame\n";
  } else {
    print "\n";
    print "Reprovado\n";
  }
  printf "Media: %.2f\n", $MD2;
}

print "\n";
print "Tecle <Enter> para encerrar... ";
prompt();
