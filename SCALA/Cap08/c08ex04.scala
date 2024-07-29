// c08ex04.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var nomes = new Array[String](5)
    var x: String = ""
    var i, j: Int = 0

    println("CLASSIFICACAO DE NOMES (DECRESCENTE)\n")

    for (i <- 0 to 4) {
      print(s"${ i + 1 }o. nome: ")
      nomes(i) = readLine()
    }

    for (i <- 0 to 3) {
      for (j <- i + 1 to 4) {
        if (nomes(i).compareToIgnoreCase(nomes(j)) > 0) {
          x = nomes(i)
          nomes(i) = nomes(j)
          nomes(j) = x
        }
      }
    }

    println()
    for (i <- 0 to 4) {
      println(s"${ i + 1 }º nome: ${ nomes(i) }")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
