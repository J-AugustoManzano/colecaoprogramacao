// c04ex11.groovy

class Main {
    static void main(String[] args) {
        int N, R4, R5
        Scanner entrada = new Scanner(System.in)

        print "Entre um numero inteiro: "
        N = entrada.nextInt()
        entrada.nextLine()

        R4 = N % 4
        R5 = N % 5

        if (R4 == 0 && R5 == 0)
            println "Resultado = $N"
        else
            println "Valor nao e divisivel por 4 e 5"

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
