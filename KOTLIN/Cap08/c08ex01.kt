// c08ex01.kt

import java.util.regex.Pattern

fun validaInteiro(entrada: String): Boolean {
    val padrao = Pattern.compile("""^[+-]?\d+$""")
    val matcher = padrao.matcher(entrada)
    return matcher.matches()
}

fun main() {
    var numero: String

    while (true) {
        print("Entre um valor numerico inteiro: ")
        numero = readLine() ?: ""
        println()

        if (numero.isEmpty()) {
            println("Erro: Tecla <Enter> acionada acidentalmente.\n")
            continue
        }

        if (!validaInteiro(numero)) {
            println("Erro: Entre um valor numerico.\n")
            continue
        }

        println("Entrada valida fornecida: $numero")
        break
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
