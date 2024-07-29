// c08ex08.scala

import scala.io.StdIn._

object Main {
  final val FIM = 10
  var MATRIZ = new Array[Int](FIM)
  var INICIO = 0

  def Vazia(): Boolean = {
    if (INICIO == 0) {
      true
    } else {
      false
    }
  }

  def Cheia(): Boolean = {
    if (INICIO == FIM) {
      true
    } else {
      false
    }
  }

  def Adicionar(ELEMENTO: Int): Boolean = {
    if (Cheia()) {
      false
    } else {
      MATRIZ(INICIO) = ELEMENTO
      INICIO += 1
      true
    }
  }

  def Retirar(ELEMENTO: Array[Int]): Boolean = {
    if (Vazia()) {
      false
    } else {
      ELEMENTO(0) = MATRIZ(0)
      for (I <- 0 to INICIO - 2) {
        MATRIZ(I) = MATRIZ(I + 1)
      }
      INICIO -= 1
      true
    }
  }

  def Entrada(): Unit = {
    print("Entre com um elemento numerico: ")
    val X = readInt()
    println()
    if (Adicionar(X)) {
      println(s"Elemento $X inserido na posicao $INICIO")
    } else {
      println(s"Impossivel adicionar $X - fila lotada.")
    }
    println()
  }

  def Saida(): Unit = {
    val ELEMENTO = new Array[Int](1)
    if (Retirar(ELEMENTO)) {
      println(s"Elemento ${ELEMENTO(0)} retirado do inicio da fila.")
    } else {
      println("Impossivel retirar - fila vazia.")
    }
    println()
  }

  def Atual(): Unit = {
    if (!(Vazia())) {
      println(s"${MATRIZ(0)} - primeiro elemento da fila.")
    } else {
      println("Impossivel apresentar - fila vazia.")
    }
    println()
  }

  def Exibicao(): Unit = {
    if (!(Vazia())) {
      for (I <- 0 to INICIO - 1) {
        printf("Posicao: %2d = %d%n", I + 1, MATRIZ(I))
      }
    } else {
      println("Impossivel apresentar - fila vazia.")
    }
    println()
  }

  def Criar(): Unit = {
    INICIO = 0
    for (I <- 0 to FIM - 1) {
      MATRIZ(I) = 0
    }
  }

  def main(args: Array[String]): Unit = {
    Criar()
    var OPCAO = 0
    while (OPCAO != 6) {
      println("PROGRAMA: FILA\n")
      println("[1] - Entrada")
      println("[2] - Saida")
      println("[3] - Apresentar 1o. da fila")
      println("[4] - Apresentar a fila")
      println("[5] - Nova fila")
      println("[6] - Sair\n")
      print("Escolha uma opcao: ")
      OPCAO = readInt()
      println()

      if (OPCAO != 6) {
        OPCAO match {
          case 1 => Entrada()
          case 2 => Saida()
          case 3 => Atual()
          case 4 => Exibicao()
          case 5 => Criar()
          case _ =>
            println("Opcao invalida. Tente novamente.\n")
        }
      }
    }
  }
}
