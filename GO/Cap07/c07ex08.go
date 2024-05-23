// c07ex08.go

package main
import "fmt"

func FATORIAL(N int) int {
  if N == 0 {
    return 1
  }
  return N * FATORIAL(N - 1)
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
