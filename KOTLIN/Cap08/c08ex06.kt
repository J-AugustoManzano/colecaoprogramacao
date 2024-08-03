// c08ex06.kt

fun main() {
    val NUMERO = IntArray(10)
    var X: Int
    var PESQ: Int
    var COMECO: Int
    var FINAL: Int
    var MEIO: Int = 0
    var ACHA: Boolean

    var RESP: String = "SIM"
    var RESPOSTA: String

    println("PESQUISA BINARIA DE NUMEROS\n")

    for (I in 0..9) {
        print("Entre o %2do. numero: ".format(I + 1))
        NUMERO[I] = readln().toInt()
    }

    for (I in 0..8)
        for (J in I + 1..9)
            if (NUMERO[I] > NUMERO[J]) {
                X = NUMERO[I]
                NUMERO[I] = NUMERO[J]
                NUMERO[J] = X
            }

    while (RESP == "SIM") {
        print("\nEntre o numero a ser pesquisado: ")
        var inputStr = readLine()
        if (inputStr.isNullOrEmpty()) {
            println("Número inválido. Tente novamente.")
            continue
        }
        PESQ = inputStr.toInt()

        COMECO = 0
        FINAL = 9
        ACHA = false

        while (COMECO <= FINAL && ACHA == false) {
            MEIO = (COMECO + FINAL) / 2
            if (PESQ == NUMERO[MEIO])
                ACHA = true
            else if (PESQ < NUMERO[MEIO])
                FINAL = MEIO - 1
            else
                COMECO = MEIO + 1
        }

        println()
        if (ACHA == true)
            println("$PESQ foi localizado na posicao ${MEIO + 1}")
        else
            println("$PESQ nao foi localizado")

        do {
            print("\nDeseja continuar? (SIM/NAO): ")
            RESPOSTA = readLine() ?: ""
            RESP = RESPOSTA.uppercase()
            if (RESP != "SIM" && RESP != "NAO")
                println("Informe apenas SIM ou NAO.")
        } while (RESP != "SIM" && RESP != "NAO")
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
