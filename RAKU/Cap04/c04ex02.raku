# c04ex02.raku

print "Entre o 1o. valor numerico: ";
my $A = prompt();

print "Entre o 2o. valor numerico: ";
my $B = prompt();

if ($A > $B) {
  my $X = $A;
  $A = $B;
  $B = $X;
}

printf "Os valores são: %d e %d.\n", $A, $B;

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
