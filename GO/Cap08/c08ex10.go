// c08ex10.go

package main

import "fmt"

func FibonacciBase(N int, X int, Y int) int {
  if N == 0 {
    return X
  }
  if N == 1 {
    return Y
  }
  if N == 2 {
    return X + Y
  }
  if N >= 2 {
    return FibonacciBase(N-1, Y, X+Y)
  }
  return 0
}

func Fibonacci(N int) int {
  return FibonacciBase(N, 0, 1)
}

func main() {
  for I := 0; I <= 14; I++ {
    fmt.Printf("%2d - %d\n", I, Fibonacci(I))
  }
  fmt.Println()
  fmt.Print("Tecle <Enter> para encerrar... ")
  fmt.Scanln()
}
