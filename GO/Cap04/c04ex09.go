// c04ex09.go

package main

import "fmt"

func main() {
  var P1, P2 int

  fmt.Println("Classificacao esportiva:")
  fmt.Println()
  fmt.Println("Entre '1' se o atleta pontuou na 1a. pro-va.")
  fmt.Println("Entre '1' se o atleta pontuou na 2a. pro-va.")
  fmt.Println("Qualquer outro valor se nao pontuou.")
  fmt.Println()

  fmt.Print("Prova 1: ")
  fmt.Scan(&P1)

  fmt.Print("Prova 2: ")
  fmt.Scan(&P2)

  fmt.Println()

  if ((P1 == 1 && !(P2 == 1)) || (! (P1 == 1) && P2 == 1)) {
    fmt.Println("Atleta participa da terceira prova.")
  } else {
    fmt.Println("Atleta nao participa da terceira pro-va.")
    if (P1 == 1 && P2 == 1) {
      fmt.Println("Classificado para a final.")
    } else {
      fmt.Println("Desclassificado da competicao.")
    }
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
