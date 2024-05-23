// c06ex04,go

package main
import (
  "fmt"
)

func main() {
  var N, I int
  var A []string

  fmt.Print("Entre a quantidade de elementos da matriz: ")
  fmt.Scan(&N)
  fmt.Println()

  A = make([]string, N)

  for I = 0; I < N; I++ {
    fmt.Printf("Entre o %do. nome: ", I+1)
    fmt.Scan(&A[I])
  }

  fmt.Println()
  fmt.Println("Foram fornecidos os nomes:")
  fmt.Println()

  for I = 0; I < N; I++ {
    fmt.Printf("Nome %d = %s\n", I+1, A[I])
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
