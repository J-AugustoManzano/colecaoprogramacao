// c08ex10.go

package main

import "fmt"

func FibonacciBase(N, X, Y int) int {
  if (N == 0) {
    return X
  } else if (N == 1) {
    return Y
  } else {
    return FibonacciBase(N - 1, Y, X + Y)
  }
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
