// c07ex07.go

package main

import "fmt"

func Igual(A, B int) bool {
  return A == B
}

func main() {
  var X, Y int

  fmt.Print("Informe o 1o. valor: ")
  fmt.Scan(&X)

  fmt.Print("Informe o 2o. valor: ")
  fmt.Scan(&Y)

  if Igual(X, Y) {
    fmt.Println("Valores sao iguais")
  } else {
    fmt.Println("Valores sao diferentes")
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
