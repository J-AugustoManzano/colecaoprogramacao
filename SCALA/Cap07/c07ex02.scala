// c07ex02.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var A, B, X: Int = 0

    print("Entre um valor para a variavel <A>: ")
    A = readInt()

    print("Entre um valor para a variavel <B>: ")
    B = readInt()

    X = A
    A = B
    B = X

    println(s"Variavel <A> com valor $A")
    println(s"Variavel <B> com valor $B")

    print("\nPress ione <Enter> para encerrar... ")
    readLine()
  }
}
