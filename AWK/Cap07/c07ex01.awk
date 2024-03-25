# c07ex01.awk 

BEGIN {
  OPCAO = 0
  while (OPCAO != 5) {
    print "CALCULADORA - V1"
    print
    print "[1] - Adicao"
    print "[2] - Subtracao"
    print "[3] - Multiplicacao"
    print "[4] - Divisao"
    print "[5] - Fim de Programa"
    print
    printf "Escolha uma opcao: "
    getline OPCAO < "/dev/tty"
    if (OPCAO != 5) {
      if (OPCAO == 1) {
        ROTSOMA()
      } else if (OPCAO == 2) {
        ROTSUBTRACAO()
      } else if (OPCAO == 3) {
        ROTMULTIPLICACAO()
      } else if (OPCAO == 4) {
        ROTDIVISAO()
      } else {
        print
        print "Opcao invalida - Tente novamente"
        print
      }
    }
  }
}

function ROTSOMA() {
  print
  print "Rotina de Adicao"
  print
  printf "Entre o 1o. valor: "
  getline A1 < "/dev/tty"
  printf "Entre o 2o. valor: "
  getline B1 < "/dev/tty"
  print
  R1 = A1 + B1
  printf "O resultado da operacao equivale a: %.2f\n", R1
  print
}

function ROTSUBTRACAO() {
  print
  print "Rotina de Subtracao"
  print
  printf "Entre o 1o. valor: "
  getline A2 < "/dev/tty"
  printf "Entre o 2o. valor: "
  getline B2 < "/dev/tty"
  print
  R2 = A2 - B2
  printf "O resultado da operacao equivale a: %.2f\n", R2
  print
}

function ROTMULTIPLICACAO() {
  print
  print "Rotina de Multiplicacao"
  print
  printf "Entre o 1o. valor: "
  getline A3 < "/dev/tty"
  printf "Entre o 2o. valor: "
  getline B3 < "/dev/tty"
  print
  R3 = A3 * B3
  printf "O resultado da operacao equivale a: %.2f\n", R3
  print
}

function ROTDIVISAO() {
  print
  print "Rotina de Divisao"
  print
  printf "Entre o 1o. valor: "
  getline A4 < "/dev/tty"
  printf "Entre o 2o. valor: "
  getline B4 < "/dev/tty"
  if (B4 == 0) {
    print "O resultado da operacao equivale a: ERRO"
  } else {
    R4 = A4 / B4
    printf "O resultado da operacao equivale a: %.2f\n", R4
  }
  print
}
