// c04ex04.go

package main
import "fmt"

func main() {
  var N1, N2, N3, N4, NE, MD1, MD2 float64

  fmt.Print("Entre a 1a. nota .......: ")
  fmt.Scan(&N1)

  fmt.Print("Entre a 2a. nota .......: ")
  fmt.Scan(&N2)

  fmt.Print("Entre a 3a. nota .......: ")
  fmt.Scan(&N3)

  fmt.Print("Entre a 4a. nota .......: ")
  fmt.Scan(&N4)
  fmt.Println()

  MD1 = (N1 + N2 + N3 + N4) / 4

  if (MD1 >= 7) {
    fmt.Println("Aprovado")
    fmt.Printf("Media: %.2f\n", MD1)
  } else {
    fmt.Print("Entre a nota de exame ..: ")
    fmt.Scan(&NE)
    fmt.Println()

    MD2 = (MD1 + NE) / 2

    if (MD2 >= 5) {
      fmt.Println("Aprovado em exame")
    } else {
      fmt.Println("Reprovado")
    }
    fmt.Printf("Media: %.2f\n", MD2)
  }

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
