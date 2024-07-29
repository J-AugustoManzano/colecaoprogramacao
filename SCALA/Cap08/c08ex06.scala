// c08ex06.scala

import scala.io.StdIn._

object Main {
  def main(args: Array[String]): Unit = {
    var NUMERO = new Array[Int](10)
    var I, J, X, PESQ: Int = 0
    var COMECO, FINAL, MEIO: Int = 0
    var ACHA: Boolean = false

    var RESP: String = "SIM"
    var RESPOSTA: String = ""

    println("PESQUISA BINARIA DE NUMEROS\n")

    for (I <- 0 to 9) {
      printf("Entre o %2do. numero: ", I + 1)
      NUMERO(I) = readInt()
    }

    for (I <- 0 to 8) {
      for (J <- I + 1 to 9) {
        if (NUMERO(I) > NUMERO(J)) {
          X = NUMERO(I)
          NUMERO(I) = NUMERO(J)
          NUMERO(J) = X
        }
      }
    }

    while (RESP.equals("SIM")) {
      print("\nEntre o numero a ser pesquisado: ")
      PESQ = readInt()

      COMECO = 0
      FINAL = 9
      ACHA = false

      while (COMECO <= FINAL && ACHA == false) {
        MEIO = (COMECO + FINAL) / 2
        if (PESQ == NUMERO(MEIO))
          ACHA = true
        else if (PESQ < NUMERO(MEIO))
          FINAL = MEIO - 1
        else
          COMECO = MEIO + 1
      }

      println()
      if (ACHA == true)
        println(s"$PESQ foi localizado na posicao ${ MEIO + 1 }")
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
