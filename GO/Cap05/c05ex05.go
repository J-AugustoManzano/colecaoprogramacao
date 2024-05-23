// c05ex05.go

package main
import "fmt"

func main() {
  var I, N, R int

  I = 1
  for {
    fmt.Print("Entre um valor numerico: ")
    fmt.Scan(&N)

    R = N * 3

    fmt.Println("Resultado =", R)
    fmt.Println()

    I++
    
    if (I > 5) {break}    
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
