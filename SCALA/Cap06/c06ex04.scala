// c06ex04.class

import scala.collection.mutable.ArrayBuffer
import scala.io.StdIn

object Main {
  def main(args: Array[String]): Unit = {
    var N: Int = 0
    var A: ArrayBuffer[String] = ArrayBuffer()
    
    print("Entre a quantidade de elementos da matriz: ")
    N = StdIn.readInt()
    println()

    for (i <- 0 to N - 1) {
      print(s"Entre o ${i+1}o. nome: ")
      A += StdIn.readLine()
    }

    println()
    println("Foram fornecidos os nomes:")
    println()

    for (i <- 0 to N - 1) {
      printf("Nome %d = %s\n", i + 1, A(i))
    }

    print("\nTecle <Enter> para encerrar... ")
    StdIn.readLine()
  }
}
