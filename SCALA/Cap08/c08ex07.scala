// c08ex07.scala

import scala.io.StdIn._

object Main {
  val LIMITE = 10
  var MATRIZ = new Array[Int](LIMITE)
  var TOPO = 0

  def Vazia(): Boolean = {
    if (TOPO == 0) {
      true
    } else {
      false
    }
  }

  def Cheia(): Boolean = {
    if (TOPO == LIMITE) {
      true
    } else {
      false
    }
  }

  def Adicionar(ELEMENTO: Int): Boolean = {
    if (Cheia()) {
      println("Impossivel adicionar - pilha cheia.")
      false
    } else {
      MATRIZ(TOPO) = ELEMENTO
      TOPO += 1
      true
    }
  }

  def Retirar(ELEMENTO: Array[Int]): Boolean = {
    if (Vazia()) {
      println("Impossivel retirar - pilha vazia.")
      false
    } else {
      TOPO -= 1
      ELEMENTO(0) = MATRIZ(TOPO)
      MATRIZ(TOPO) = 0
      true
    }
  }

  def Empilhar(): Unit = {
    print("Entre com um elemento numerico: ")
    val X = readInt()
    println()
    if (Adicionar(X)) {
      println(s"Elemento $X inserido na posicao $TOPO")
    }
    println()
  }

  def Desempilhar(): Unit = {
    val ELEMENTO = new Array[Int](1)
    if (Retirar(ELEMENTO)) {
      println(s"Elemento ${ELEMENTO(0)} retirado do topo da pilha.")
    }
    println()
  }

  def Mostrar(): Unit = {
    if (Vazia()) {
      println("Impossivel apresentar - pilha vazia.")
    } else {
      for (I <- TOPO - 1 to 0 by -1) {
        printf("Posicao: %2d = %d%n", I + 1, MATRIZ(I))
      }
    }
    println()
  }

  def Criar(): Unit = {
    TOPO = 0
    for (I <- 0 to LIMITE - 1) {
      MATRIZ(I) = 0
    }
  }

  def main(args: Array[String]): Unit = {
    Criar()
    var Opcao = 0
    while (Opcao != 5) {
      println("PROGRAMA: PILHA\n")
      println("[1] - Empilhar")
      println("[2] - Desempilhar")
      println("[3] - Mostrar")
      println("[4] - Criar pilha")
      println("[5] - Sair\n")
      print("Escolha uma opcao: ")
      Opcao = readInt()
      println()
      if (Opcao != 5) {
        Opcao match {
          case 1 => Empilhar()
          case 2 => Desempilhar()
          case 3 => Mostrar()
          case 4 => Criar()
          case _ => 
            println("Opcao invalida. Tente novamente.\n")
        }
      }
    }
  }
}
