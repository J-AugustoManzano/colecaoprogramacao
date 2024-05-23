// c02ex01.go

package main

import (
  "fmt"
  "math"
)

func main() {
  // Operadores binários
  
  fmt.Println(5 + 3)          // Saída: 8
  fmt.Println(10 - 4)         // Saída: 6
  fmt.Println(2 * 6)          // Saída: 12
  fmt.Println(10 / 3.0)       // Saída: 3.3333... (quociente real)
  fmt.Println(10 / 3)         // Saída: 3 (quociente inteiro)
  fmt.Println(10 % 3)         // Saída: 1 (resto da divisão)

  // Operadores unários
  
  fmt.Println(+5)             // Saída: 5 (mantém positivo)
  fmt.Println(-8)             // Saída: -8 (inverte sinal)

  // Exponenciação
  
  fmt.Println(math.Pow(2, 3)) // Saída: 8 (2 elevado a 3)
}
