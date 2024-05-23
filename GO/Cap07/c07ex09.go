// c07ex09.go

package main
import "fmt"

func FATORIAL_BASE(N, P int) int {
  if N == 0 {
    return P
  }
  return FATORIAL_BASE(N-1, N*P)
}

func FATORIAL(N int) int {
  return FATORIAL_BASE(N, 1)
}

func main() {
  var LIMITE int

  fmt.Print("Qual fatorial: ")
  fmt.Scan(&LIMITE)

  fmt.Printf("Fatorial = %d\n", FATORIAL(LIMITE))

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
