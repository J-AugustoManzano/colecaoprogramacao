// c07ex05.go

package main
import "fmt"

func fatorial(N int, FAT *int) {
  *FAT = 1
  for I := 1; I <= N; I++ {
    *FAT *= I
  }
}

func main() {
  var LIMITE, RESP int

  fmt.Print("Qual fatorial: ")
  fmt.Scan(&LIMITE)

  fatorial(LIMITE, &RESP)

  fmt.Printf("Fatorial = %d\n", RESP)

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
