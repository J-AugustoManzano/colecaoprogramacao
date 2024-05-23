// c04ex02.go

package main
import "fmt"

func main() {
  var A, B, X int

  fmt.Print("Entre o 1o. valor numerico: ")
  fmt.Scan(&A)

  fmt.Print("Entre o 2o. valor numerico: ")
  fmt.Scan(&B)

  if (A > B) {
    X = A
    A = B
    B = X
  }

  fmt.Printf("Os valores sao: %d e %d.\n", A, B)

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
