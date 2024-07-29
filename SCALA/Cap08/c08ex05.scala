// c08ex05.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var NOME = new Array[String](10)

    var RESP = "SIM"
    var PESQ: String = ""
    var RESPOSTA: String = ""
    var I: Int = 0
    var ACHA: Boolean = false

    println("PESQUISA SEQUENCIAL DE NOMES\n")

    for (I <- 0 to 9) {
      printf("Entre o %2do. nome: ", I + 1)
      NOME(I) = readLine()
    }

    while (RESP.equals("SIM")) {
      print("\nEntre o nome a ser pesquisado: ")
      PESQ = readLine()
      I = 0
      ACHA = false

      while (I <= 9 && ACHA == false) {
        if (PESQ.equals(NOME(I)))
          ACHA = true
        else
          I += 1
      }

      println()
      if (ACHA == true)
        println(s"$PESQ foi localizado na posicao ${ I + 1 }")
      else
        println(s"$PESQ nao foi localizado")

      do {
        print("\nDeseja continuar? (SIM/NAO): ")
        RESPOSTA = readLine()
        RESP = RESPOSTA.toUpperCase()
        if (!RESP.equals("SIM") && !RESP.equals("NAO"))
          println("Informe apenas SIM ou NAO.")
      } while (!RESP.equals("SIM") && !RESP.equals("NAO"))
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
  }
}
