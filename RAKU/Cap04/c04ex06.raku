# c04ex06.raku

print "Entre o 1o. valor numerico: ";
my $A = prompt();

print "Entre o 2o. valor numerico: ";
my $B = prompt();

say "";
print "Escolha uma opcao de menu:\n";
say "";
print "[1] - Adicao\n";
print "[2] - Subtracao\n";
print "[3] - Multiplicacao\n";
print "[4] - Divisao\n";
say "";

print "==> ";
my $Opcao = prompt();
print "\n";

given ($Opcao) {
  when 1 {
    say "Calculo de adicao";
    say "Resultado: " ~ ($A + $B);
  }
  when 2 {
    say "Calculo de subtracao";
    say "Resultado: " ~ ($A - $B);
  }
  when 3 {
    say "Calculo de multiplicacao";
    say "Resultado: " ~ ($A * $B);
  }
  when 4 {
    say "Calculo de divisao";
    if ($B == 0) {
      say "Resultado: ERRO";
    } else {
      say "Resultado: " ~ ($A / $B);
    }
  }
  default {
    say "Entrada invalida";
    say "Tente novamente em outro momento";
  }
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
