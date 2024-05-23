// c04ex08.go

package main

import (
  "fmt"
  "strings"
)

func main() {
  var Transp string

  fmt.Println("Escolha o tipo de transporte:")
  fmt.Println()
  fmt.Println("[M] - Motocicleta")
  fmt.Println("[S] - Scooter")
  fmt.Println()

  fmt.Print("==> ")
  fmt.Scan(&Transp)
  fmt.Println()

  Transp = strings.ToUpper(Transp)

  if (Transp == "M" || Transp == "S") {
    fmt.Println("Transporte valido.")
  } else {
    fmt.Println("Transporte invalido.")
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
