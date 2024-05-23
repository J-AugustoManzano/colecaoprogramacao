// c04ex10.go

package main

import "fmt"

func main() {
  var A, B, X, C int

  fmt.Print("Entre valor para a variavel <A>: ")
  fmt.Scan(&A)

  fmt.Print("Entre valor para a variavel <B>: ")
  fmt.Scan(&B)

  fmt.Print("Entre valor para a variavel <X>: ")
  fmt.Scan(&X)

  if (!(X > 5)) {
    C = A + B
  } else {
    C = A - B
  }

  fmt.Println()

  fmt.Println("Resultado =", C)

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
