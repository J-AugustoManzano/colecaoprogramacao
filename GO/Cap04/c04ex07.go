// c04ex07.go

package main

import "fmt"

func main() {
  var Numero int

  fmt.Print("Entre um numero inteiro: ")
  fmt.Scan(&Numero)

  if (Numero >= 20 && Numero <= 90) {
    fmt.Println("O numero esta na faixa de 20 a 90.")
  } else {
    fmt.Println("O numero esta fora da faixa de 20 a 90.")
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
