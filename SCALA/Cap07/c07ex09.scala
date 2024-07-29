// c07ex09.scala

import scala.io.StdIn._

object Main {
  def fatorialBase(N: Int, P: Int): Int = {
    if (N == 0) {
      return P
    } else {
      return fatorialBase(N - 1, N * P)
    }
  }

  def fatorial(N: Int): Int = {
    fatorialBase(N, 1)
  }

  def main(args: Array[String]): Unit = {
    var limite: Int = 0

    print("Qual fatorial: ")
    limite = readInt()

    println(s"Fatorial = ${fatorial(limite)}")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
