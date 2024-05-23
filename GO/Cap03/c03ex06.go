// c03ex06.go

package main

import (
  "fmt"
  "strings"
)

func Inverte(texto string) string {
  var (
    caractere = []rune(texto)
    x rune
    i int
    j int
  )
  for i = 0; i <= (len(caractere) / 2) - 1; i++ {
    j = len(caractere) - 1 - i
    x = caractere[i]
    caractere[i] = caractere[j]
    caractere[j] = x
  }
  return string(caractere)
}

func Trocar(texto string, inicio, fim int, novoTexto string) string {
  var caractere = []rune(texto)
  caractere = append(caractere[:inicio], 
              append([]rune(novoTexto), 
              caractere[fim + 1:] ...) ...)
  return string(caractere)
}

func main() {
  var palavra string = "COMPUTADOR"

  fmt.Printf("Palavra ........: %s\n", palavra)
  fmt.Println()
  fmt.Printf("Lado esquerdo ..: %s\n", palavra[0:3])
  fmt.Printf("Centro .........: %s\n", palavra[3:7])
  fmt.Printf("Lado direito ...: %s\n", palavra[7:10])
  fmt.Printf("Reverso ........: %s\n", Inverte(palavra))
  fmt.Printf("Copias .........: %s\n", strings.Repeat(palavra, 3))
  fmt.Printf("Nova palavra ...: %s\n", Trocar(palavra, 6, 6, "O"))

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
