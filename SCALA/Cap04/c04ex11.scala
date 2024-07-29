// c04ex11.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var N: Int = 0
    var R4: Int = 0
    var R5: Int = 0

    print("Entre um numero inteiro: ")
    N = readInt()

    R4 = N % 4
    R5 = N % 5

    if (R4 == 0 && R5 == 0) {
      println("Resultado = " + N)
    } else {
      println("Valor nao e divisivel por 4 e 5")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
