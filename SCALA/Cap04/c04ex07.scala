// c04ex07.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var Numero: Int = 0

    print("Entre um numero inteiro: ")
    Numero = readInt()

    if (Numero >= 20 && Numero <= 90) {
      println("O numero está na faixa de 20 a 90.")
    } else {
      println("O numero está fora da faixa de 20 a 90.")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
