// c04ex10.kt

fun main() {
    var A: Int
    var B: Int
    var X: Int
    var C: Int

    print("Entre valor para a variavel <A>: ")
    A = readLine()?.toInt() ?: 0

    print("Entre valor para a variavel <B>: ")
    B = readLine()?.toInt() ?: 0

    print("Entre valor para a variavel <X>: ")
    X = readLine()?.toInt() ?: 0

    if (!(X > 5)) {
        C = A - B
    } else {
        C = A + B
    }

    println("\nResultado = $C")

    print("\nPressione <Enter> para encerrar... ")
    readLine()
}
