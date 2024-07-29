// c07ex08.scala

import scala.io.StdIn._

object Main {
  def fatorial(N: Int): Int = {
    if (N == 0) {
      1
    } else {
      N * fatorial(N - 1)
    }
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
