// c04ex01.go

package main
import "fmt"

func main() {
  var A, B, X int

  fmt.Print("Entre o 1o. valor numerico: ")
  fmt.Scan(&A)

  fmt.Print("Entre o 2o. valor numerico: ")
  fmt.Scan(&B)

  X = A + B

  if (X > 10) {
    fmt.Println("Resultado =", X)
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
