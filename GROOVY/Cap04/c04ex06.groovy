// c04ex06.groovy

class Main {
    static void main(String[] args) {
        float A, B
        int Opcao
        Scanner entrada = new Scanner(System.in)

        print "Entre o 1o. valor numerico: "
        A = entrada.nextFloat()
        entrada.nextLine()

        print "Entre o 2o. valor numerico: "
        B = entrada.nextFloat()
        entrada.nextLine()

        println()
        println "Escolha uma opcao de menu:"
        println()

        println "[1] - Adicao"
        println "[2] - Subtracao"
        println "[3] - Multiplicacao"
        println "[4] - Divisao"
        println()

        print "==> "
        Opcao = entrada.nextInt()
        entrada.nextLine()
        println()

        switch (Opcao) {
            case 1:
                println "Calculo de adicao"
                printf "Resultado: %.2f\n", A + B
                break
            case 2:
                println "Calculo de subtracao"
                printf "Resultado: %.2f\n", A - B
                break
            case 3:
                println "Calculo de multiplicacao"
                printf "Resultado: %.2f\n", A * B
                break
            case 4:
                println "Calculo de divisao"
                if (B == 0)
                    println "Resultado: ERRO"
                else
                    printf "Resultado: %.2f\n", A / B
                break
            default:
                println "Entrada invalida"
                println "Tente novamente em outro momento"
                break
        }

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
