# c04ex05.raku

print "Entre com um numero equivalente a um mes: ";
my $Mes = prompt;

given ($Mes.Int) {
  when  1 {say "Janeiro";}
  when  2 {say "Fevereiro";}
  when  3 {say "Marco";}
  when  4 {say "Abril";}
  when  5 {say "Maio";}
  when  6 {say "Junho";}
  when  7 {say "Julho";}
  when  8 {say "Agosto";}
  when  9 {say "Setembro";}
  when 10 {say "Outubro";}
  when 11 {say "Outubro";}
  when 12 {say "Outubro";}
  default {say "Mes invalido";}
}

say "";
print "Tecle <Enter> para encerrar... ";
prompt();
