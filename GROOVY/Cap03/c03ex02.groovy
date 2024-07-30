// c03ex02.groovy

class Main {
    static void main(String[] args) {
        double R, A
        Scanner entrada = new Scanner(System.in)

        print "Entre valor do raio: "
        R = entrada.nextDouble()
        entrada.nextLine()

        A = Math.PI * Math.pow(R, 2)

        printf("Resultado = %.2f\n", A)

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
