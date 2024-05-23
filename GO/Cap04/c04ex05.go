// c04ex05.go

package main
import "fmt"

func main() {
  var Mes int

  fmt.Print("Entre com um numero equivalente a um mes: ")
  fmt.Scan(&Mes)

  switch (Mes) {
    case 1:
      fmt.Println("Janeiro")
    case 2:
      fmt.Println("Fevereiro")
    case 3:
      fmt.Println("Marco")
    case 4:
      fmt.Println("Abril")
    case 5:
      fmt.Println("Maio")
    case 6:
      fmt.Println("Junho")
    case 7:
      fmt.Println("Julho")
    case 8:
      fmt.Println("Agosto")
    case 9:
      fmt.Println("Setembro")
    case 10:
      fmt.Println("Outubro")
    case 11:
      fmt.Println("Novembro")
    case 12:
      fmt.Println("Dezembro")
    default:
      fmt.Println("Numero invalido")
  }
    
  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
