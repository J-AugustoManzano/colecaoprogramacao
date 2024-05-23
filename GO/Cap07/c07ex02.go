// c07ex02.go

package main
import "fmt"

func main() {
  var A, B, X int

  fmt.Print("Entre um valor para a variavel <A>: ")
  fmt.Scan(&A)

  fmt.Print("Entre um valor para a variavel <B>: ")
  fmt.Scan(&B)

  X = A
  A = B
  B = X

  fmt.Println()
  fmt.Println("Variavel <A> com valor", A)
  fmt.Println("Variavel <B> com valor", B)

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
