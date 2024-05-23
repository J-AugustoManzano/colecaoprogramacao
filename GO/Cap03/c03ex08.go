// c03ex08.go

package main

import "fmt"

func main() {
  var A, B, X int

  /*
   Programa exemplo para operações de duas entradas
   com cálculo de adição e apresentação de resultado.
  */

  fmt.Println("ADICAO DE NUMEROS")
  fmt.Println()

  // Entrada de dados

  fmt.Print("Entre o 1o. valor numerico: ")
  fmt.Scanln(&A)

  fmt.Print("Entre o 2o. valor numerico: ")
  fmt.Scanln(&B)

  // Processamento de dados

  X = A + B // Cálculo da adição

  // Saída de dados

  fmt.Println("Resultado =", X)

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
