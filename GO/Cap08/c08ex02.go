// c08ex02.go

package main
import (
  "bufio"
  "fmt"
  "os"
  "regexp"
  "strings"
)

func validaNumero(Numero string) bool {
  pattern := "^[0-9]+(\\.[0-9]+)?$"
  matched, _ := regexp.MatchString(pattern, Numero)
  return matched
}

func main() {
  var Numero string
  var leAlfa *bufio.Reader
  var entraInt []byte

  leAlfa = bufio.NewReader(os.Stdin)

  for {
    fmt.Print("Entre um valor numerico: ")
    entraInt, _, _ = leAlfa.ReadLine()
    Numero = string(entraInt)
    Numero = strings.TrimSpace(Numero)

    if (len(Numero) == 0) {
      fmt.Println("\nErro: Tecla <Enter> acionada acidentalmente.")
      fmt.Println()
      continue
    }

    if (!(validaNumero(Numero))) {
      fmt.Println("\nErro: Entre um numero inteiro.")
      fmt.Println()
      continue
    }
    break
  }

  fmt.Printf("\nEntrada valida fornecida: %s\n", Numero)

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
