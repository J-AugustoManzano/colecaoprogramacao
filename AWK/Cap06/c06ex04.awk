# c06ex04.awk 

BEGIN {

  printf "Entre a quantidade de elementos da matriz: "
  getline N < "-"
  print

  for (I = 1; I <= N; I++) {
    printf "Entre o %3do. nome: ", I
    getline A[I] < "-"
  }

  print
  print "Foram fornecidos os nomes:"
  print

  for (I = 1; I <= N; I++) {
    printf "Nome %3d - ", I
    printf "%s\n", A[I]
  }

  print
  printf "Tecle <Enter> para encerrar... "
  getline < "-"
 
}

