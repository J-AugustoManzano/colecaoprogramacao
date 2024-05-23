// c08ex03.go

package main

import "fmt"

func main() {
  var Numeros [5]int
  var X int

  fmt.Println("CLASSIFICACAO DE NUMEROS (CRESCENTE)")
  fmt.Println()

  for I := 0; I <= 4; I++ {
    fmt.Printf("Entre o %do. numero: ", I + 1)
    fmt.Scanln(&Numeros[I])
  }

  for I := 0; I <= 3; I++ {
    for J := I + 1; J <= 4; J++ {
      if (Numeros[I] > Numeros[J]) {
        X = Numeros[I]
        Numeros[I] = Numeros[J]
        Numeros[J] = X
      }
    }
  }

  fmt.Println()
  for I := 0; I <= 4; I++ {
    fmt.Printf("%do. numero: %d\n", I + 1, Numeros[I])
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
