// c07ex04.scala

import scala.io.StdIn._

object Main {
  def fatorial(N: Int): Unit = {
    var fat = 1
    for (i <- 1 to N) {
      fat *= i
    }
    println(s"Fatorial = $fat")
  }

  var limite: Int = 0

  def main(args: Array[String]): Unit = {
    print("Qual fatorial: ")
    limite = readInt()

    fatorial(limite)

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
