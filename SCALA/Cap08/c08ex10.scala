// c08ex10.scala

import scala.io.StdIn._

object Main {
  def FibonacciBase(N: Int, X: Int, Y: Int): Int = {
    if (N == 0)
      return X
    else if (N == 1)
      return Y
    else
      return FibonacciBase(N - 1, Y, X + Y)
  }

  def Fibonacci(N: Int): Int = {
    return FibonacciBase(N, 0, 1)
  }

  def main(args: Array[String]): Unit = {
    for (I <- 0 to 14) {
      println(s"$I - ${Fibonacci(I)}")
    }

    print("\nTecle <Enter> para sair... ")
    readLine()
  }
}
