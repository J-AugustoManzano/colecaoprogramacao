// c03ex01.scala

object Main {
  def main(args: Array[String]): Unit = {
    var A, B, X: Int = 0

    print("Entre o 1o. valor numerico inteiro: ")
    A = scala.io.StdIn.readInt()

    print("Entre o 2o. valor numerico inteiro: ")
    B = scala.io.StdIn.readInt()

    X = A + B

    println(s"Resultado = $X")

    print("\nTecle <Enter> para encerrar... ")
    scala.io.StdIn.readLine()
  }
}
