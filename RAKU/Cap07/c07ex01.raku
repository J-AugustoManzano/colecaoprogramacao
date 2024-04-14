# c07ex01.raku

sub ROTSOMA {
  say "";
  say "Rotina de Adicao";
  say "";
  print "Entre o 1o. valor: ";
  my $A1 = prompt();
  print "Entre o 2o. valor: ";
  my $B1 = prompt();
  say "";
  my $R1 = $A1 + $B1;
  printf "O resultado da operacao equivale a: %.2f\n", $R1;
  say "";
}

sub ROTSUBTRACAO {
  say "";
  say "Rotina de Subtracao";
  say "";
  print "Entre o 1o. valor: ";
  my $A2 = prompt();
  print "Entre o 2o. valor: ";
  my $B2 = prompt();
  say "";
  my $R2 = $A2 - $B2;
  printf "O resultado da operacao equivale a: %.2f\n", $R2;
  say "";
}

sub ROTMULTIPLICACAO {
  say "";
  say "Rotina de Multiplicacao";
  say "";
  print "Entre o 1o. valor: ";
  my $A3 = prompt();
  print "Entre o 2o. valor: ";
  my $B3 = prompt();
  say "";
  my $R3 = $A3 * $B3;
  printf "O resultado da operacao equivale a: %.2f\n", $R3;
  say "";
}

sub ROTDIVISAO {
  say "";
  say "Rotina de Divisao";
  say "";
  print "Entre o 1o. valor: ";
  my $A4 = prompt();
  print "Entre o 2o. valor: ";
  my $B4 = prompt();
  say "";
  given ($B4) {
    when 0 {
      say "O resultado da operacao equivale a: ERRO";
    }
    default {
      my $R4 = $A4 / $B4;
      printf "O resultado da operacao equivale a: %.2f\n", $R4;
    }
  }
  say "";
}

my $OPCAO = 0;
while ($OPCAO != 5) {
  say "CALCULADORA - V1";
  say "";
  say "[1] - Adicao";
  say "[2] - Subtracao";
  say "[3] - Multiplicacao";
  say "[4] - Divisao";
  say "[5] - Fim de Programa";
  say "";
  printf "Escolha uma opcao: ";
  $OPCAO = prompt();
  if ($OPCAO != 5) {
    given ($OPCAO) {
      when 1 {
        ROTSOMA();
      }
      when 2 {
        ROTSUBTRACAO();
      }
      when 3 {
        ROTMULTIPLICACAO();
      }
      when 4 {
        ROTDIVISAO();
      }
      default {
        say "";
        say "Opcao invalida - Tente novamente";
        say "";
      }
    }
  }
}
