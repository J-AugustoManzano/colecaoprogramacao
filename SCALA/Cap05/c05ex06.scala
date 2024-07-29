// c05ex06.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var RESP: Char = 'S'
    var N, R: Int = 0

    do {
      print("Entre um valor numerico: ")
      N = readInt()

      R = N * 3

      println("Resultado = " + R + "\n")

      print("Deseja continuar? (S/N): ")
      RESP = Character.toUpperCase(readChar())

      println()
    } while (!(Character.toUpperCase(RESP) != 'S'))

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
