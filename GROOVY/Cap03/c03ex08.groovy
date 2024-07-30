// c03ex08.groovy

/*
 Programa exemplo para operações de duas entradas
 com cálculo de adição e apresentação de resultado.
*/

class Main {
    static void main(String[] args) {
        int A, B, X
        Scanner entrada = new Scanner(System.in)
        
        // Entrada de dados

        print "Entre o 1o. valor numerico inteiro: "
        A = entrada.nextInt()
        entrada.nextLine()

        print "Entre o 2o. valor numerico inteiro: "
        B = entrada.nextInt()
        entrada.nextLine()
        
        // Processamento de dados

        X = A + B // Cálculo da adição
        
        // Saída de dados

        println "Resultado = $X"

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
