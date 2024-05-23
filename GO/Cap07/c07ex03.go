// c07ex03.go

package main
import "fmt"

var A, B int

func TROCA() {
  var X int
  X = A
  A = B
  B = X
}

func main() {
  fmt.Print("Entre um valor para a variavel <A>: ")
  fmt.Scan(&A)

  fmt.Print("Entre um valor para a variavel <B>: ")
  fmt.Scan(&B)

  TROCA()
  
  fmt.Println()
  fmt.Println("Variavel <A> com valor", A)
  fmt.Println("Variavel <B> com valor", B)

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
