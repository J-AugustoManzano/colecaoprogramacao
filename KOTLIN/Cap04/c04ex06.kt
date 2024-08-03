// c04ex06.kt

fun main() {
    var A: Float
    var B: Float
    var Opcao: Int

    print("Entre o 1o. valor numerico: ")
    A = readLine()?.toFloat() ?: 0.0f

    print("Entre o 2o. valor numerico: ")
    B = readLine()?.toFloat() ?: 0.0f

    println()
    println("Escolha uma opcao de menu:")
    println()
    println("[1] - Adicao")
    println("[2] - Subtracao")
    println("[3] - Multiplicacao")
    println("[4] - Divisao")
    println()

    print("==> ")
    Opcao = readLine()?.toInt() ?: 0
    println()

    when (Opcao) {
        1 -> {
            println("Calculo de adicao")
            println("Resultado: %.2f".format(A + B))
        }
        2 -> {
            println("Calculo de subtracao")
            println("Resultado: %.2f".format(A - B))
        }
        3 -> {
            println("Calculo de multiplicacao")
            println("Resultado: %.2f".format(A * B))
        }
        4 -> {
            println("Calculo de divisao")
            if (B == 0.0f) {
                println("Resultado: ERRO")
            } else {
                println("Resultado: %.2f".format(A / B))
            }
        }
        else -> {
            println("Entrada invalida")
            println("Tente novamente em outro momento")
        }
    }

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
