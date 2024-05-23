// c04ex03.go

package main
import "fmt"

func main() {
  var A, B, X, R int

  fmt.Print("Entre o 1o. valor numerico: ")
  fmt.Scan(&A)

  fmt.Print("Entre o 2o. valor numerico: ")
  fmt.Scan(&B)

  X = A + B

  if (X >= 10) {
    R = X + 5
  } else {
    R = X - 7
  }

  fmt.Println("Resultado =", R)

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
