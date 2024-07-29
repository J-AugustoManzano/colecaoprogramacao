// c03ex06.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    val palavra = "COMPUTADOR"
    val tamanho = palavra.length
    val copias = palavra + palavra + palavra
    val reverso = new StringBuilder(palavra).reverse.toString
    val nvPalavra = palavra.substring(0, 6) + "O" + palavra.substring(7)

    println("Palavra ........: " + palavra)
    println()

    println("Lado esquerdo ..: " + palavra.substring(0, 3))
    println("Centro .........: " + palavra.substring(3, 7))
    print("Lado direito ...: ")
    println(palavra.substring(tamanho - 3))
    println("Reverso ........: " + reverso)
    println("Copias .........: " + copias)
    println("Tira pedaco ....: " + palavra.substring(0, 7))
    println("Nova palavra ...: " + nvPalavra)

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
