// c05ex01.go

package main
import "fmt"

func main() {
  var MD [8]float64
  var SOMA, MEDIA float64
  var I int

  SOMA = 0
  for I = 0; I <= 7; I++ {
    fmt.Printf("Entre a media do aluno %d: ", I+1)
    fmt.Scan(&MD[I])

    SOMA += MD[I]
  }

  MEDIA = SOMA / 8

  fmt.Println()
  fmt.Printf("Media geral: %5.2f\n", MEDIA)

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
