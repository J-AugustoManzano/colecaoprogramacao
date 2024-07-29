// c03ex05.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var nome: String = ""

    print("Entre seu nome: ")
    nome = readLine()

    println(s"Ola, $nome! Bem-vindo ao estudo de Scala.")

    print("\nAperte <Enter> para encerrar... ")
    readLine()
  }
}
