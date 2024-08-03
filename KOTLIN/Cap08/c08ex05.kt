// c08ex05.kt

fun main() {
    var NOME = Array(10) { "" }
    var RESP = "SIM"
    var PESQ: String
    var RESPOSTA: String
    var ACHA: Boolean

    println("PESQUISA SEQUENCIAL DE NOMES\n")

    for (I in 0..9) {
        print("Entre o %2do. nome: ".format(I + 1))
        NOME[I] = readLine() ?: ""
    }

    while (RESP == "SIM") {
        print("\nEntre o nome a ser pesquisado: ")
        PESQ = readLine() ?: ""
        var I = 0
        ACHA = false

        while (I <= 9 && ACHA == false) {
            if (PESQ == NOME[I])
                ACHA = true
            else
                I++
        }

        println()
        if (ACHA == true)
            println("$PESQ foi localizado na posicao ${I + 1}")
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
