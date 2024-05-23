// c03ex03.go

package main
import "fmt"

func main() {
  var HT, VH, PD, SB, TD, SL float64

  fmt.Print("Entre quantidade de horas trabalhadas ..: ")
  fmt.Scan(&HT)

  fmt.Print("Entre valor do salario-hora ............: ")
  fmt.Scan(&VH)

  fmt.Print("Entre valor do percentual de desconto ..: ")
  fmt.Scan(&PD)

  SB = HT * VH
  TD = (PD / 100) * SB
  SL = SB - TD

  fmt.Println()

  fmt.Printf("Salario Bruto ....: %.2f\n", SB)
  fmt.Printf("Salario Liquido ..: %.2f\n", SL)

  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
