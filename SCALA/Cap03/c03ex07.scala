// c03ex07.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    val frase = "Aprendendo Scala com o Professor Manzano"
    val palavras = frase.split(" ")
    val busca = "Scala"
    var pos: Int = 0

    println("Frase ......: " + frase)
    println("              ----------------------------------------")
    println("              0000000001111111111222222222233333333333")
    println("              0123456789012345678901234567890123456789")
    println()

    println("Tamanho ....: " + frase.length + " caracteres")
    println()

    for (i <- 0 to 3) {
      printf("Palavra %d .............: %s%n", i + 1, palavras(i))
    }
    println()

    println("Letra 1 da Palavra 1 ..: " + palavras(0)(0))
    println("Letra 2 da Palavra 1 ..: " + palavras(0)(1))
    println("Letra 3 da Palavra 1 ..: " + palavras(0)(2))
    println("Letra 4 da Palavra 1 ..: " + palavras(0)(3))
    println()

    pos = frase.indexOf(busca) + 1
    println("A palavra 'Scala' na posicao: " + pos)

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
