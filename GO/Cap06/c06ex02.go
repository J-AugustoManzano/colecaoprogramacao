// c05ex02.go

package main
import "fmt"

func main() {
  var NOTAS [8][4]float64
  var I, J int

  for I = 0; I <= 7; I++ {
    fmt.Println("Entre as notas do aluno", I + 1, ":")
    for J = 0; J <= 3; J++ {
      fmt.Printf("Nota %d: ", J + 1)
      fmt.Scan(&NOTAS[I][J])
    }
    fmt.Println()
  }

  fmt.Println()
  fmt.Println("RELATORIO DE NOTAS")
  fmt.Println()
  fmt.Println("Aluno Nota1 Nota2 Nota3 Nota4")
  fmt.Println("----- ----- ----- ----- -----")
  for I = 0; I <= 7; I++ {
    fmt.Printf("%5d", I + 1)
    for J = 0; J <= 3; J++ {
      fmt.Printf("%6.1f", NOTAS[I][J])
    }
    fmt.Println()
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
