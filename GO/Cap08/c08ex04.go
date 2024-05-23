// c08ex04.go

package main
import (
  "bufio"
  "fmt"
  "os"
  "strings"
)

func main() {
  var Nomes [5]string
  var X string
  var leAlfa *bufio.Reader
  var entraNome []byte
  var I, J int
  
  leAlfa = bufio.NewReader(os.Stdin)

  fmt.Println("CLASSIFICACAO DE NOMES (DECRESCENTE)")
  fmt.Println()

  for I = 0; I <= 4; I++ {
    fmt.Printf("Entre o %do. nome: ", I + 1)
    entraNome, _, _ = leAlfa.ReadLine()
    Nomes[I] = strings.TrimSpace(string(entraNome))
  }

  for I = 0; I <= 3; I++ {
    for J = I + 1; J <= 4; J++ {
      if strings.Compare(Nomes[I], Nomes[J]) > 0 {
        X = Nomes[I]
        Nomes[I] = Nomes[J]
        Nomes[J] = X
      }
    }
  }

  fmt.Println()
  for I = 0; I <= 4; I++ {
    fmt.Printf("%do. nome: %s\n", I + 1, Nomes[I])
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
