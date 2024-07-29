// c07ex06.scala

import scala.io.StdIn._

object Main {
  def fatorial(N: Int): Int = {
    var fat = 1
    for (i <- 1 to N) {
      fat *= i
    }
    return fat
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
