// c07ex02.kt

fun main() {
    var A: Int
    var B: Int
    var X: Int

    print("Entre um valor para a variavel <A>: ")
    A = readLine()?.toIntOrNull() ?: 0

    print("Entre um valor para a variavel <B>: ")
    B = readLine()?.toIntOrNull() ?: 0

    X = A
    A = B
    B = X

    println()
    println("Variavel <A> com valor $A")
    println("Variavel <B> com valor $B")

    print("\nPress ione <Enter> para encerrar... ")
    readLine()
}
