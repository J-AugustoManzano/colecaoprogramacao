// c07ex07.scala

import scala.io.StdIn._

object Main {
  def igual(A: Int, B: Int): Boolean = {
    A == B
  }

  def main(args: Array[String]): Unit = {
    var x, y: Int = 0	  
	  
    print("Informe o 1o. valor: ")
    x = readInt()

    print("Informe o 2o. valor: ")
    y = readInt()

    if (igual(x, y)) {
      println("Valores sao iguais")
    } else {
      println("Valores sao diferentes")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
