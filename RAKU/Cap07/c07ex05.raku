# c07ex05.raku

sub FATORIAL($N, $FAT is rw) { 
  for 1..$N -> $I {
    $FAT *= $I;
  }
}

my $RESP = 1;

print "Qual fatorial: ";
my $LIMITE = prompt();

FATORIAL($LIMITE, $RESP);

say "Fatorial = $RESP";

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
