// c08ex08.kt

const val FIM = 10
var MATRIZ = IntArray(FIM)
var INICIO = 0

fun Vazia(): Boolean {
    if (INICIO == 0) {
        return true
    } else {
        return false
    }
}

fun Cheia(): Boolean {
    if (INICIO == FIM) {
        return true
    } else {
        return false
    }
}

fun Adicionar(ELEMENTO: Int): Boolean {
    if (Cheia())
        return false
    else {
        MATRIZ[INICIO] = ELEMENTO
        INICIO++
        return true
    }
}

fun Retirar(ELEMENTO: IntArray): Boolean {
    if (Vazia())
        return false
    else {
        ELEMENTO[0] = MATRIZ[0]
        for (I in 0 until INICIO - 1) {
            MATRIZ[I] = MATRIZ[I + 1]
        }
        INICIO--
        return true
    }
}

fun Entrada() {
    var X: Int
    print("Entre com um elemento numerico: ")
    X = readLine()?.toInt() ?: 0
    println()
    if (Adicionar(X))
        println("Elemento $X inserido na posicao $INICIO")
    else
        println("Impossivel adicionar $X - fila lotada.")
    println()
}

fun Saida() {
    val ELEMENTO = intArrayOf(0)
    if (Retirar(ELEMENTO))
        println("Elemento ${ELEMENTO[0]} retirado do inicio da fila.")
    else
        println("Impossivel retirar - fila vazia.")
    println()
}

fun Atual() {
    if (!Vazia())
        println("${MATRIZ[0]} - primeiro elemento da fila.")
    else
        println("Impossivel apresentar - fila vazia.")
    println()
}

fun Exibicao() {
    if (!Vazia())
        for (I in 0 until INICIO)
            println("Posicao: %2d = ${MATRIZ[I]}".format(I + 1))
    else
        println("Impossivel apresentar - fila vazia.")
    println()
}

fun Criar() {
    INICIO = 0
    for (I in 0 until FIM)
        MATRIZ[I] = 0
}

fun main() {
    Criar()
    var OPCAO: Int
    do {
        println("PROGRAMA: FILA\n")
        println("[1] - Entrada")
        println("[2] - Saida")
        println("[3] - Apresentar 1o. da fila")
        println("[4] - Apresentar a fila")
        println("[5] - Nova fila")
        println("[6] - Sair\n")
        print("Escolha uma opcao: ")
        OPCAO = readLine()?.toInt() ?: 6
        println()
        if (OPCAO != 6) {
            when (OPCAO) {
                1 -> Entrada()
                2 -> Saida()
                3 -> Atual()
                4 -> Exibicao()
                5 -> Criar()
                else -> println("Opcao invalida. Tente novamente.\n")
            }
        }
    } while (OPCAO != 6)
}
