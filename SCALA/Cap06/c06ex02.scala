// c06ex02.scala

import scala.io.StdIn

object Main {
  def main(args: Array[String]): Unit = {
    var NOTAS = Array.ofDim[Double](8, 4)
    var I, J: Int = 0

    for (I <- 0 to 7) {
      print(f"Entre as notas do aluno ${I + 1}:\n")
      for (J <- 0 to 3) {
        print(f"Nota ${J + 1}: ")
        NOTAS(I)(J) = StdIn.readDouble()
      }
      println()
    }

    println("\nRELATORIO DE NOTAS\n")
    println("Aluno Nota1 Nota2 Nota3 Nota4")
    println("----- ----- ----- ----- -----")
    for (I <- 0 to 7) {
      printf("%5d", I + 1)
      for (J <- 0 to 3) {
        printf("%6.1f", NOTAS(I)(J))
      }
      println()
    }

    print("\nTecle <Enter> para encerrar... ")
    StdIn.readLine()
  }
}
