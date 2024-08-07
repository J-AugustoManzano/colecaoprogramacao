// c08ex07.kt

var LIMITE = 10
var MATRIZ = IntArray(LIMITE)
var TOPO = 0

fun Vazia(): Boolean {
    if (TOPO == 0) {
        return true
    } else {
        return false
    }
}

fun Cheia(): Boolean {
    if (TOPO == LIMITE) {
        return true
    } else {
        return false
    }
}

fun Adicionar(ELEMENTO: Int): Boolean {
    if (Cheia())
        return false
    else {
        MATRIZ[TOPO] = ELEMENTO
        TOPO += 1
        return true
    }
}

fun Retirar(ELEMENTO: IntArray): Boolean {
    if (Vazia())
        return false
    else {
        TOPO -= 1
        ELEMENTO[0] = MATRIZ[TOPO]
        MATRIZ[TOPO] = 0
        return true
    }
}

fun Empilhar() {
    var X: Int
    print("Entre com um elemento numerico: ")
    X = readLine()?.toInt() ?: 0
    println()
    if (Adicionar(X))
        println("Elemento $X inserido na posicao $TOPO")
    else
        println("Impossivel adicionar $X - pilha cheia.")
    println()
}

fun Desempilhar() {
    var ELEMENTO = intArrayOf(0)
    if (Retirar(ELEMENTO))
        println("Elemento ${ELEMENTO[0]} retirado do topo da pilha.")
    else
        println("Impossivel retirar - pilha vazia.")
    println()
}

fun Mostrar() {
    if (!Vazia())
        for (I in TOPO - 1 downTo 0)
            println("Posicao: %2d = ${MATRIZ[I]}".format(I + 1))
    else
        println("Impossivel apresentar - pilha vazia.")
    println()
}

fun Criar() {
    TOPO = 0
    for (I in 0 until LIMITE)
        MATRIZ[I] = 0
}

fun main() {
    Criar()
    var Opcao: Int = 0
    while (Opcao != 5) {
        println("PROGRAMA: PILHA\n")
        println("[1] - Empilhar")
        println("[2] - Desempilhar")
        println("[3] - Mostrar")
        println("[4] - Criar pilha")
        println("[5] - Sair\n")
        print("Escolha uma opcao: ")
        Opcao = readLine()?.toInt() ?: 5
        println()
        if (Opcao != 5) {
            when (Opcao) {
                1 -> Empilhar()
                2 -> Desempilhar()
                3 -> Mostrar()
                4 -> Criar()
                else -> println("Opcao invalida. Tente novamente.\n")
            }
        }
    }
}
