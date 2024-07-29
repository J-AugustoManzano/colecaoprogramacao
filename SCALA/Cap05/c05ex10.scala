// c05ex10.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var RESP: Char = 'S'
    var N, R: Int = 0
    var saida: Boolean = true

    do {
      print("Entre um valor numerico: ")
      N = readInt()

      R = N * 3

      println("Resultado = " + R + "\n")

      print("Deseja continuar? (S/N): ")
      RESP = Character.toUpperCase(readChar())

      println()
      if (Character.toUpperCase(RESP) != 'S') {saida = false}
    } while (saida == true)

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
