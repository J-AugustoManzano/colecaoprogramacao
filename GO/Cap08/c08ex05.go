// c08ex05.go

package main
import (
  "bufio"
  "fmt"
  "os"
  "strings"
)

func main() {
  var NOME [10]string
  var leAlfa *bufio.Reader
  var entraNome []byte
  var I int
  var RESP string
  var entraResp []byte
  var ACHA bool

  leAlfa = bufio.NewReader(os.Stdin)

  fmt.Println("PESQUISA SEQUENCIAL DE NOMES")
  fmt.Println()

  for I = 0; I <= 9; I++ {
    fmt.Printf("%2do. nome: ", I + 1)
    entraNome, _, _ = leAlfa.ReadLine()
    NOME[I] = strings.TrimSpace(string(entraNome))
  }

  RESP = "SIM"
  for (RESP == "SIM") {
    fmt.Println()
    fmt.Print("Entre o nome a ser pesquisado: ")
    entraNome, _, _ = leAlfa.ReadLine()
    PESQ := strings.TrimSpace(string(entraNome))
    I = 0
    ACHA = false

    for (I <= 9 && ACHA == false) {
      if (PESQ == NOME[I]) {
        ACHA = true
      } else {
        I++
      }
    }

    if (ACHA == true) {
      fmt.Printf("\n%s foi localizado na posicao %d\n", PESQ, I + 1)
    } else {
      fmt.Printf("\n%s nao foi localizado\n", PESQ)
    }

    RESP = ""
    for (RESP != "SIM" && RESP != "NAO") {
      fmt.Print("\nDeseja continuar? (SIM/NAO): ")
      entraResp, _, _ = leAlfa.ReadLine()
      RESP = strings.ToUpper(strings.TrimSpace(string(entraResp)))

      if (RESP != "SIM" && RESP != "NAO") {
        fmt.Println("Informe apenas SIM ou NAO.")
      }
    }
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
