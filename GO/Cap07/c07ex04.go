// c07ex04.go

package main
import "fmt"

func fatorial(N int) {
  var Fat, I int
  Fat = 1
  for I = 1; I <= N; I++ {
    Fat *= I
  }
  fmt.Printf("Fatorial = %d\n", Fat)
}

func main() {
  var Limite int

  fmt.Print("Qual fatorial: ")
  fmt.Scan(&Limite)

  fatorial(Limite)

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
