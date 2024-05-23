// c03ex01.go

package main
import "fmt"

func main() {
  var a, b, x int

  fmt.Print("Entre o 1o. valor numérico inteiro: ")
  fmt.Scan(&a)

  fmt.Print("Entre o 2o. valor numérico inteiro: ")
  fmt.Scan(&b)

  x = a + b

  fmt.Println("Resultado =", x)

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
