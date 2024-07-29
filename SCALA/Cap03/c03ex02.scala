// c03ex02.scala

object Main {
  def main(args: Array[String]): Unit = {
    var R, A: Double = 0.0

    print("Entre valor do raio: ")
    R = scala.io.StdIn.readDouble()

    A = Math.PI * Math.pow(R, 2)

    printf("Resultado = %.2f\n", A)

    print("\nTecle <Enter> para encerrar... ")
    scala.io.StdIn.readLine()
  }
}
