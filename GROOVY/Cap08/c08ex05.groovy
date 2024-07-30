// c08ex05.groovy

class Main {
    static void main(String[] args) {
        String[] NOME = new String[10]

        String RESP = "SIM"
        String PESQ
        String RESPOSTA
        int I
        boolean ACHA

        Scanner scanner = new Scanner(System.in)

        println "PESQUISA SEQUENCIAL DE NOMES\n"

        for (I = 0; I <= 9; I++) {
            printf "Entre o %2do. nome: ", I + 1
            NOME[I] = scanner.nextLine()
        }

        while (RESP == "SIM") {
            print "\nEntre o nome a ser pesquisado: "
            PESQ = scanner.nextLine()
            I = 0
            ACHA = false

            while (I <= 9 && ACHA == false) {
                if (PESQ == NOME[I])
                    ACHA = true
                else
                    ++I
            }

            println()
            if (ACHA == true)
                println "$PESQ foi localizado na posicao ${I + 1}"
            else
                println "$PESQ nao foi localizado"

            do {
                print "\nDeseja continuar? (SIM/NAO): "
                RESPOSTA = scanner.nextLine()
                RESP = RESPOSTA.toUpperCase()
                if (RESP != "SIM" && RESP != "NAO")
                    println "Informe apenas SIM ou NAO."
            } while (RESP != "SIM" && RESP != "NAO")
        }

        print "\nTecle <Enter> para encerrar... "
        scanner.nextLine()
    }
}
