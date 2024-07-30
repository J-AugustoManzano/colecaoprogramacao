// c03ex07.groovy

class Main {
    static void main(String[] args) {
        String frase = "Aprendendo Groovy com o Professor Manzano"
        String[] palavras = frase.split(" ")
        String busca = "Groovy"
        int pos

        println "Frase ......: $frase"
        println "              -----------------------------------------"
        println "              00000000011111111112222222222333333333334"
        println "              01234567890123456789012345678901234567890"
        println()

        println "Tamanho ....: ${frase.length()} caracteres"
        println()

        for (int i = 0; i <= 3; i++) {
            println "Palavra ${i + 1} .............: ${palavras[i]}"
        }
        println()

        println "Letra 1 da Palavra 1 ..: ${palavras[0][0]}"
        println "Letra 2 da Palavra 1 ..: ${palavras[0][1]}"
        println "Letra 3 da Palavra 1 ..: ${palavras[0][2]}"
        println "Letra 4 da Palavra 1 ..: ${palavras[0][3]}"
        println()

        pos = frase.indexOf(busca) + 1
        println "A palavra 'Groovy' na posicao: $pos"

        print "\nTecle <Enter> para encerrar... "
        Scanner entrada = new Scanner(System.in)
        entrada.nextLine()
    }
}
