// c08ex01.groovy

class Main {
    static boolean validaInteiro(String entrada) {
        return entrada ==~ /^[+-]?\d+$/
    }

    static void main(String[] args) {
        Scanner scanner = new Scanner(System.in)
        String numero

        while (true) {
            print("Entre um valor numerico inteiro: ")
            numero = scanner.nextLine()
            println()

            if (numero.isEmpty()) {
                println("Erro: Tecla <Enter> acionada acidentalmente.")
                println()
                continue
            }

            if (!validaInteiro(numero)) {
                println("Erro: Entre um valor numerico.\n")
                continue
            }

            break
        }

        println("Entrada valida fornecida: $numero")

        print("\nTecle <Enter> para encerrar... ")
        scanner.nextLine()
    }
}
