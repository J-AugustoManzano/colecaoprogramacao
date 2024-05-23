// c07ex01.go

package main
import "fmt"

func rotSoma() {
  var A1, B1, R1 float64
  fmt.Println()
  fmt.Println("Rotina de Adicao")
  fmt.Println()
  fmt.Print("Entre o 1o. valor: ")
  fmt.Scan(&A1)
  fmt.Print("Entre o 2o. valor: ")
  fmt.Scan(&B1)
  fmt.Println()
  R1 = A1 + B1
  fmt.Printf("O resultado da operacao equivale a: %.2f\n", R1)
  fmt.Println()
}

func rotSubtracao() {
  var A2, B2, R2 float64
  fmt.Println()
  fmt.Println("Rotina de Subtracao")
  fmt.Println()
  fmt.Print("Entre o 1o. valor: ")
  fmt.Scan(&A2)
  fmt.Print("Entre o 2o. valor: ")
  fmt.Scan(&B2)
  fmt.Println()
  R2 = A2 - B2
  fmt.Printf("O resultado da operacao equivale a: %.2f\n", R2)
  fmt.Println()
}

func rotMultiplicacao() {
  var A3, B3, R3 float64
  fmt.Println()
  fmt.Println("Rotina de Multiplicacao")
  fmt.Println()
  fmt.Print("Entre o 1o. valor: ")
  fmt.Scan(&A3)
  fmt.Print("Entre o 2o. valor: ")
  fmt.Scan(&B3)
  fmt.Println()
  R3 = A3 * B3
  fmt.Printf("O resultado da operacao equivale a: %.2f\n", R3)
  fmt.Println()
}

func rotDivisao() {
  var A4, B4, R4 float64
  fmt.Println()
  fmt.Println("Rotina de Divisao")
  fmt.Println()
  fmt.Print("Entre o 1o. valor: ")
  fmt.Scan(&A4)
  fmt.Print("Entre o 2o. valor: ")
  fmt.Scan(&B4)
  fmt.Println()
  if B4 == 0 {
    fmt.Println("O resultado da operacao equivale a: ERRO")
  } else {
    R4 = A4 / B4
    fmt.Printf("O resultado da operacao equivale a: %.2f\n", R4)
  }
  fmt.Println()
}

func main() {
  var opcao int
  
  opcao = 0
  for (opcao != 5) {
    fmt.Println("CALCULADORA - V1")
    fmt.Println()
    fmt.Println("[1] - Adicao")
    fmt.Println("[2] - Subtracao")
    fmt.Println("[3] - Multiplicacao")
    fmt.Println("[4] - Divisao")
    fmt.Println("[5] - Fim de Programa")
    fmt.Println()
    fmt.Print("Escolha uma opcao: ")
    fmt.Scan(&opcao)
    switch opcao {
    case 1: rotSoma()
    case 2: rotSubtracao()
    case 3: rotMultiplicacao()
    case 4: rotDivisao()
    case 5: break
    default:
      fmt.Println()
      fmt.Println("Opcao invalida - Tente novamente")
      fmt.Println()
    }
  }
}
