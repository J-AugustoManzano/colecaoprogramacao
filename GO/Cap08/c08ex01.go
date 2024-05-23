// c08ex01.go

package main
import (
  "bufio"
  "fmt"
  "os"
  "regexp"
  "strings"
)

func validaInteiro(Numero string) bool {
  var padrao string
  var validado bool
  padrao = "^[0-9]+$"
  validado, _ = regexp.MatchString(padrao, Numero)
  return validado
}

func main() {
  var Numero string
  var leAlfa *bufio.Reader
  
  leAlfa = bufio.NewReader(os.Stdin)

  for {
    fmt.Print("Entre um valor numerico inteiro: ")
    Numero, _ = leAlfa.ReadString('\n')
    Numero = strings.TrimSpace(Numero)

    if (len(Numero) == 0) {
      fmt.Println("\nErro: Tecla <Enter> acionada acidentalmente.")
      fmt.Println()
      continue
    }

    if (!(validaInteiro(Numero))) {
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
