// c08ex02.scala

import scala.io.StdIn._
import scala.util.matching.Regex

object Main {
  def validaNumero(entrada: String): Boolean = {
    val padrao: Regex = """^[+-]?(\d+|\d+\.\d+)$""".r
    return padrao.findFirstIn(entrada).isDefined
  }

  def main(args: Array[String]): Unit = {
    var numero: String = ""
    var saida: Boolean = true

    while (saida == true) {
      print("Entre um valor numerico: ")
      numero = readLine()
      println()

      if (numero.isEmpty) {
        println("Erro: Tecla <Enter> acionada acidentalmente.")
        println()
      }

      if (!validaNumero(numero)) {
        println("Erro: Entre um valor numerico.\n")
      }

      if (!(numero.isEmpty) && validaNumero(numero)) {saida = false}
    }

    println(s"Entrada valida fornecida: $numero")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
