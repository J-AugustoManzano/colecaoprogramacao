// c08ex09.go

package main

import "fmt"

func Fibonacci(N int) int {
  if (N == 0) {
    return 0
  }
  if (N == 1) {
    return 1
  }
  if (N >= 2) {
    return Fibonacci(N - 1) + Fibonacci(N - 2)
  }
  return 0
}

func main() {
  for I := 0; I <= 14; I++ {
    fmt.Printf("%2d - %d\n", I, Fibonacci(I))
  }
  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
