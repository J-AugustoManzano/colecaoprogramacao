// c07ex03.kt

var A: Int = 0
var B: Int = 0

fun troca() {
    var X = A
    A = B
    B = X
}

fun main() {
    print("Entre um valor para a variavel <A>: ")
    A = readLine()?.toIntOrNull() ?: 0

    print("Entre um valor para a variavel <B>: ")
    B = readLine()?.toIntOrNull() ?: 0

    troca()

    println()
    println("Variavel <A> com valor $A")
    println("Variavel <B> com valor $B")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
