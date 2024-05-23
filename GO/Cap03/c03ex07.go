// c03ex07.go

package main
import (
  "fmt"  
  "strings"
)

func main() {
  frase := "Aprendendo Tcl com o Professor Manzano"
  palavras := make([]string, 4)

  fmt.Println("Frase ......: ", frase)
  fmt.Println("              ---------------------------------------")
  fmt.Println("              000000000111111111122222222223333333333")
  fmt.Println("              012345678901234567890123456789012345678")
  fmt.Println()

  fmt.Println("Tamanho ....: ", len(frase), "caracteres")
  fmt.Println()

  fmt.Sscanf(frase, "%s %s %s %s", &palavras[0], 
                                   &palavras[1], 
                                   &palavras[2], 
                                   &palavras[3])

  fmt.Println("Palavra 1 .............: ", palavras[0])
  fmt.Println("Palavra 2 .............: ", palavras[1])
  fmt.Println("Palavra 3 .............: ", palavras[2])
  fmt.Println("Palavra 4 .............: ", palavras[3])
  fmt.Println()

  fmt.Println("Letra 1 da Palavra 1 ..: ", string(palavras[0][0]))
  fmt.Println("Letra 2 da Palavra 1 ..: ", string(palavras[0][1]))
  fmt.Println("Letra 3 da Palavra 1 ..: ", string(palavras[0][2]))
  fmt.Println("Letra 4 da Palavra 1 ..: ", string(palavras[0][3]))
  fmt.Println()

  pos := strings.Index(frase, "Tcl")
  fmt.Println("A palavra 'Tcl' na posicao: ", pos + 1)

  fmt.Print("\nTecle <Enter> para encerrar... ")
  fmt.Scanln()
}
