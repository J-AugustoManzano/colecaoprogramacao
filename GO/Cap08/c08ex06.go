// c08ex06.go

package main
import (
  "bufio"
  "fmt"
  "os"
  "strconv"
  "strings"
)

func main() {
  var NUMERO [10]int
  var leAlfa *bufio.Reader
  var entraNumero []byte
  var I, J, COMECO, FINAL, MEIO int
  var RESP string
  var entraResp []byte
  var ACHA bool

  leAlfa = bufio.NewReader(os.Stdin)

  fmt.Println("PESQUISA BINARIA DE NUMEROS")
  fmt.Println()

  for I = 0; I <= 9; I++ {
    fmt.Printf("Entre o %2do. numero: ", I + 1)
    entraNumero, _, _ = leAlfa.ReadLine()
    NUMERO[I], _ = strconv.Atoi(strings.TrimSpace(string(entraNumero)))
  }

  for I = 0; I <= 8; I++ {
    for J = I + 1; J <= 9; J++ {
      if (NUMERO[I] > NUMERO[J]) {
        X := NUMERO[I]
        NUMERO[I] = NUMERO[J]
        NUMERO[J] = X
      }
    }
  }

  RESP = "SIM"
  for (RESP == "SIM") {
    fmt.Println()
    fmt.Print("Entre o numero a ser pesquisado: ")
    entraNumero, _, _ = leAlfa.ReadLine()
    PESQ, _ := strconv.Atoi(strings.TrimSpace(string(entraNumero)))
    COMECO = 0
    FINAL = 9
    ACHA = false

    for (COMECO <= FINAL && ACHA == false) {
      MEIO = (COMECO + FINAL) / 2
      if (PESQ == NUMERO[MEIO]) {
        ACHA = true
      } else if (PESQ < NUMERO[MEIO]) {
        FINAL = MEIO - 1
      } else {
        COMECO = MEIO + 1
      }
    }

    if (ACHA == true) {
      fmt.Printf("\n%d foi localizado na posicao %d\n", PESQ, MEIO + 1)
    } else {
      fmt.Printf("\n%d nao foi localizado\n", PESQ)
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
