// c03ex06.groovy

class Main {
    static void main(String[] args) {
        String palavra = "COMPUTADOR"
        int tamanho = palavra.length()
        String copias = palavra * 3
        StringBuilder reverso = new StringBuilder(palavra).reverse()
        String novaPalavra = 
            "${palavra.substring(0, 6)}O${palavra.substring(7)}"

        Scanner entrada = new Scanner(System.in)

        println "Palavra ........: $palavra"
        println()

        println "Lado esquerdo ..: ${palavra.substring(0, 3)}"
        println "Centro .........: ${palavra.substring(3, 7)}"
        print "Lado direito ...: "
        println palavra.substring(tamanho - 3)
        println "Reverso ........: $reverso"
        println "Copias .........: $copias"
        println "Tira pedaco ....: ${palavra.substring(0, 7)}"
        println "Nova palavra ...: $novaPalavra"

        print "\nTecle <Enter> para encerrar... "
        entrada.nextLine()
    }
}
     
