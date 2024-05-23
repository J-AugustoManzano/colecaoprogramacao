// c05ex04.go

package main

import (
  "fmt"
  "strings"
)

func main() {
  var RESP string
  var N, R int

  RESP = "S"
  for (!(strings.ToUpper(RESP) != "S")) {
    fmt.Print("Entre um valor numerico: ")
    fmt.Scan(&N)

    R = N * 3

    fmt.Println("Resultado =", R)
    fmt.Println()

    fmt.Print("Deseja continuar? (S/N): ")
    fmt.Scan(&RESP)
    fmt.Println()
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
