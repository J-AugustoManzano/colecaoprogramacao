// c07ex05.scala

import scala.io.StdIn._

object Main {
  def fatorial(N: Int, fat: Array[Int]): Unit = {
    fat(0) = 1
    for (i <- 1 to N) {
      fat(0) *= i
    }
  }

  def main(args: Array[String]): Unit = {
  var limite: Int = 0  
  var resp = Array[Int](0)  

    print("Qual fatorial: ")
    limite = readInt()

    fatorial(limite, resp)

    println(s"Fatorial = ${resp(0)}")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
