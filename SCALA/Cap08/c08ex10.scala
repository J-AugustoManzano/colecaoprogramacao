//  c08ex10.scala

import scala.io.StdIn._

object Main {
  def fibonacciBase(n: Int, x: Int, y: Int): Int = {
    if (n == 0)
      return x
    if (n == 1)
      return y
    if (n >= 2)
      return fibonacciBase(n - 1, y, x + y)
    return 0;
  }

  def fibonacci(n: Int): Int = {
    fibonacciBase(n, 0, 1)
  }

  def main(args: Array[String]): Unit = {
    for (i <- 0 to 14)
      println(f"$i%2d - ${fibonacci(i)}")

    println()
    print("Tecle <Enter> para sair... ")
    scala.io.StdIn.readLine()
  }
}
