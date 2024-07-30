// c06ex03.scala

import scala.io.StdIn

case class Aluno(
  var Nome: String = "",
  var Turma: Char = ' ',
  var Sala: Int = 0,
  var Notas: Array[Float] = new Array[Float](4)
)

object Main {
  def main(args: Array[String]): Unit = {
    var ALUNO: Array[Aluno] = new Array[Aluno](8)
    var I, J: Int = 0

    println("Escola de Computacao XPTO")
    println("Cadastro Escolar de Aluno")
    println()

    for (I <- 0 to 7) {
      println(f"Aluno: ${I + 1}")
      println()

      ALUNO(I) = Aluno()

      print("Nome ..............: ")
      ALUNO(I).Nome = readLine()

      print("Turma .............: ")
      ALUNO(I).Turma = readLine().charAt(0)

      print("Sala ..............: ")
      ALUNO(I).Sala = readLine().toInt

      println()

      for (J <- 0 to 3) {
        print(f"Entre a ${J + 1}a. nota ..: ")
        ALUNO(I).Notas(J) = readLine().toFloat
      }

      println()
    }

    println("Escola de Computacao XPTO")
    println("Cadastro Escolar de Aluno")
    println()
    println("DADOS DOS ALUNOS")

    print("Aluno ")
    print("Nome                           ")
    print("Sala ")
    print("Turma ")
    print("Nota1 ")
    print("Nota2 ")
    print("Nota3 ")
    println("Nota4")

    print("----- ")
    print("------------------------------ ")
    print("---- ")
    print("----- ")
    print("----- ")
    print("----- ")
    print("----- ")
    println("-----")

    for (I <- 0 to 7) {
      printf("%5d ", I + 1)
      printf("%-30s ", ALUNO(I).Nome)
      printf("%4d ", ALUNO(I).Sala)
      printf("%5c ", ALUNO(I).Turma)
      for (J <- 0 to 3)
        printf("%5.1f ", ALUNO(I).Notas(J))
      println()
    }

    println()
    print("Tecle <Enter> para encerrar... ")
    readLine()
  }
}
