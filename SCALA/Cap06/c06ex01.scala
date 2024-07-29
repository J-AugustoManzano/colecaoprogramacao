// c06ex01.scala

import scala.io.StdIn

object Main {
  def main(args: Array[String]): Unit = {
    var MD = new Array[Double](8)
    var SOMA: Double = 0.0
    var MEDIA: Double = 0.0

    for (I <- 0 to 7) {
      print(f"Entre a media do aluno ${I + 1}: ")
      MD(I) = StdIn.readDouble()
      SOMA += MD(I)
    }

    MEDIA = SOMA / 8

    println()
    printf("Media geral: %.2f\n", MEDIA)

    print("\nTecle <Enter> para encerrar... ")
    StdIn.readLine()
  }
}
