// c04ex09.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var prova1: Int = 0
    var prova2: Int = 0

    println("Classificacao esportiva\n")
    println("Entre '1' se atleta pontuou na 1a prova")
    println("Entre '1' se atleta pontuou na 2a prova")
    println("Qualquer outro valor se nao pontuou nas provas\n")

    print("Prova 1: ")
    prova1 = readInt()

    print("Prova 2: ")
    prova2 = readInt()

    if (prova1 == 1 ^ prova2 == 1) {
      println("Atleta participa da terceira prova.")
    } else {
      println("Atleta nao participa da terceira prova.")
      if (prova1 == 1 && prova2 == 1) {
        println("Classificado para a final.")
      } else {
        println("Desclassificado da competicao.")
      }
    }

    print("\nPressione <Enter> para encerrar... ")
    readLine()
  }
}
