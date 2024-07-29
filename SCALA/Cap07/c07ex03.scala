// c07ex03.scala

import scala.io.StdIn._

object Main {
  var A, B: Int = 0

  def troca(): Unit = {
    var X = A
    A = B
    B = X
  }

  def main(args: Array[String]): Unit = {
    print("Entre um valor para a variavel <A>: ")
    A = readInt()

    print("Entre um valor para a variavel <B>: ")
    B = readInt()

    troca()

    println()
    println(s"Variavel <A> com valor $A")
    println(s"Variavel <B> com valor $B")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
