// c04ex08.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var Transp: Char = ' '

    println("Escolha o tipo de transporte:\n")
    println("[M] - Motocicleta")
    println("[S] - Scooter\n")

    print("==> ")
    Transp = readChar().toUpper

    println()
    if (Transp == 'M' || Transp == 'S') {
      println("Transporte valido.")
    } else {
      println("Transporte invalido.")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
