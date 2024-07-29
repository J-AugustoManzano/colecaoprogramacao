// c04ex05.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var Mes: Int = 0

    print("Entre com um numero equivalente a um mes: ")
    Mes = readInt()

    Mes match {
      case  1 => println("Janeiro")
      case  2 => println("Fevereiro")
      case  3 => println("Março")
      case  4 => println("Abril")
      case  5 => println("Maio")
      case  6 => println("Junho")
      case  7 => println("Julho")
      case  8 => println("Agosto")
      case  9 => println("Setembro")
      case 10 => println("Outubro")
      case 11 => println("Novembro")
      case 12 => println("Dezembro")
      case  _ => println("Mês inválido")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
