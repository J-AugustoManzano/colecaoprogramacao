// c07ex07.go

package main
import "fmt"

func fatorial(N int) int {
  var FAT, I int	
  FAT = 1
  for I = 1; I <= N; I++ {
    FAT *= I
  }
  return FAT
}

func main() {
  var LIMITE int

  fmt.Print("Qual fatorial: ")
  fmt.Scan(&LIMITE)

  fmt.Printf("Fatorial = %d\n", fatorial(LIMITE))

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
