// c08ex02.groovy

class Main {
    static boolean validaNumero(String entrada) {
        return entrada ==~ /^[+-]?(\d+(\d+)?|\d+\.\d+)$/
    }

    static void main(String[] args) {
        Scanner scanner = new Scanner(System.in)
        String numero

        while (true) {
            print("Entre um valor numerico: ")
            numero = scanner.nextLine()
            println()

            if (numero.isEmpty()) {
                println("Erro: Tecla <Enter> acionada acidentalmente.")
                println()
                continue
            }

            if (!validaNumero(numero)) {
                println("Erro: Entre um valor numerico.\n")
                continue
            }

            break
        }

        println("Entrada valida fornecida: $numero")

        println()
        print("Tecle <Enter> para encerrar... ")
        scanner.nextLine()
    }
}
