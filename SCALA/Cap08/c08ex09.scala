// c08ex09.scala

import scala.io.StdIn._

object Main {
  def Fibonacci(N: Int): Int = {
    if (N == 0)
      return 0
    if (N == 1)
      return 1
    if (N >= 2)
      return Fibonacci(N - 1) + Fibonacci(N - 2)
    return 0 // Para evitar aviso de retorno implícito
  }

  def main(args: Array[String]): Unit = {
    for (I <- 0 to 14) {
      println(s"$I - ${Fibonacci(I)}")
    }

    print("\nTecle <Enter> para sair... ")
    readLine()
  }
}
