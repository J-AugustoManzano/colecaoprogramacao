// c04ex06.go

package main

import "fmt"

func main() {
  var A, B, Opcao float64

  fmt.Print("Entre o 1o. valor numerico: ")
  fmt.Scan(&A)

  fmt.Print("Entre o 2o. valor numerico: ")
  fmt.Scan(&B)

  fmt.Println()
  fmt.Println("Escolha uma opcao de menu:")
  fmt.Println()
  fmt.Println("[1] - Adicao")
  fmt.Println("[2] - Subtracao")
  fmt.Println("[3] - Multiplicacao")
  fmt.Println("[4] - Divisao")
  fmt.Println()

  fmt.Print("==> ")
  fmt.Scan(&Opcao)
  fmt.Println()

  switch (Opcao) {
    case 1:
      fmt.Println("Calculo de adicao")
      fmt.Println("Resultado: ", A + B)
    case 2:
      fmt.Println("Calculo de subtracao")
      fmt.Println("Resultado: ", A - B)
    case 3:
      fmt.Println("Calculo de multiplicacao")
      fmt.Println("Resultado: ", A * B)
    case 4:
      fmt.Println("Calculo de divisao")
      if (B == 0) {
        fmt.Println("Resultado: ERRO")
      } else {
        fmt.Println("Resultado: ", A / B)
      }
    default:
      fmt.Println("Entrada invalida")
      fmt.Println("Tente novamente em outro momento")
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
