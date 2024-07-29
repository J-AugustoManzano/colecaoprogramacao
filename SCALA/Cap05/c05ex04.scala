// c05ex04.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var RESP: Char = 'S'
    var N, R: Int = 0

    while (!(Character.toUpperCase(RESP) != 'S')) {
      print("Entre um valor numerico: ")
      N = readInt()

      R = N * 3

      println("Resultado = " + R + "\n")

      print("Deseja continuar? (S/N): ")
      RESP = Character.toUpperCase(readChar())

      println()
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
