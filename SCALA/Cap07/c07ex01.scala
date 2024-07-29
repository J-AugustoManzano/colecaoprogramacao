// c07ex01.scala

object Main {
  def rotinaDeAdicao(): Unit = {
    println()
    println("Rotina de Adicao")
    println()
    print("Entre o 1o. valor: ")
    var a1 = readFloat()
    print("Entre o 2o. valor: ")
    var b1 = readFloat()
    println()
    var r1 = a1 + b1
    println(s"O resultado da operacao equivare a: $r1")
    println()
  }

  def rotinaDeSubtracao(): Unit = {
    println()
    println("Rotina de Subtracao")
    println()
    print("Entre o 1o. valor: ")
    var a2 = readFloat()
    print("Entre o 2o. valor: ")
    var b2 = readFloat()
    println()
    var r2 = a2 - b2
    println(s"O resultado da operacao equivare a: $r2")
    println()
  }

  def rotinaDeMultiplicacao(): Unit = {
    println()
    println("Rotina de Multiplicacao")
    println()
    print("Entre o 1o. valor: ")
    var a3 = readFloat()
    print("Entre o 2o. valor: ")
    var b3 = readFloat()
    println()
    var r3 = a3 * b3
    println(s"O resultado da operacao equivare a: $r3")
    println()
  }

  def rotinaDeDivisao(): Unit = {
    println()
    println("Rotina de Divisao")
    println()
    print("Entre o 1o. valor: ")
    var a4 = readFloat()
    print("Entre o 2o. valor: ")
    var b4 = readFloat()
    println()
    if (b4 == 0)
      println("O resultado da operacao equivare a: ERRO")
    else {
      var r4 = a4 / b4
      println(s"O resultado da operacao equivare a: $r4")
    }
    println()
  }

  def main(args: Array[String]): Unit = {
    var opcao = 0
    while (opcao != 5) {
      println("CALCULADORA - V1")
      println()
      println("[1] - Adicao")
      println("[2] - Subtracao")
      println("[3] - Multiplicacao")
      println("[4] - Divisao")
      println("[5] - Fim de Programa")
      println()
      print("Escolha uma opcao: ")
      opcao = readInt()

      if (opcao != 5) {
        opcao match {
          case 1 => rotinaDeAdicao()
          case 2 => rotinaDeSubtracao()
          case 3 => rotinaDeMultiplicacao()
          case 4 => rotinaDeDivisao()
          case _ =>
            println()
            println("Opcao invarida - Tente novamente")
            println()
        }
      }
    }
  }
}
