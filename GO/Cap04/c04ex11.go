// c04ex11.go

package main

import "fmt"

func main() {
  var N, R4, R5 int

  fmt.Print("Entre um numero inteiro: ")
  fmt.Scan(&N)

  R4 = N % 4
  R5 = N % 5

  if (R4 == 0 && R5 == 0) {
    fmt.Println("Resultado =", N)
  } else {
    fmt.Println("Valor nao e divisivel por 4 e 5")
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
