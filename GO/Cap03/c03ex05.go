// c03ex05.go

package main
import (
  "fmt"
)

func main() {
  var NOME string

  fmt.Print("Entre seu nome: ")
  fmt.Scan(&NOME)

  fmt.Printf("Ola, %s! Bem-vindo ao estudo de Go.\n", NOME)

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
