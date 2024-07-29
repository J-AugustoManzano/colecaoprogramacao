// c08ex03.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var numeros = new Array[Int](5)
    var i, j, x: Int = 0

    println("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n")

    for (i <- 0 to 4) {
      print(s"${ i + 1 }o. numero: ")
      numeros(i) = readInt()
    }

    for (i <- 0 to 3) {
      for (j <- i + 1 to 4) {
        if (numeros(i) > numeros(j)) {
          x = numeros(i)
          numeros(i) = numeros(j)
          numeros(j) = x
        }
      }
    }

    println()
    for (i <- 0 to 4) {
      println(s"${ i + 1 }o. numero: ${ numeros(i) }")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
