// c05ex09.go

package main

import "fmt"

func main() {
  var I, N, R int

  for I = 1; I <= 5; I++ {
    fmt.Print("Entre um valor numerico: ")
    fmt.Scan(&N)

    R = N * 3

    fmt.Println("Resultado =", R)
    fmt.Println()
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
