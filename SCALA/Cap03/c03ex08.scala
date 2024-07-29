// c03ex08.scala

/*
 Programa exemplo para operações de duas entradas
 com cálculo de adição e apresentação de resultado.
*/

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var A, B, X: Int = 0

    // Entrada de dados
    
    print("Entre o 1o. valor numerico inteiro: ")
    A = readInt()

    print("Entre o 2o. valor numerico inteiro: ")
    B = readInt()

    // Processamento de dados
    
    X = A + B // Cálculo da adição

    // Saída de dados
    
    println(s"Resultado = $X")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
