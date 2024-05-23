// c05ex01.go

package main
import "fmt"

func main() {
  var I, N, R int

  I = 1
  for (I <= 5) {
    fmt.Print("Entre um valor numerico: ")
    fmt.Scan(&N)

    R = N * 3

    fmt.Println("Resultado =", R)
    fmt.Println()

    I++
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
