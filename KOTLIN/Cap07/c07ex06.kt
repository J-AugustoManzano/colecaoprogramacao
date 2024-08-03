// c07ex06.kt

fun fatorial(N: Int): Int {
    var fat = 1
    for (i in 1..N) {
        fat *= i
    }
    return fat
}

fun main() {
    var limite: Int

    print("Qual fatorial: ")
    limite = readLine()?.toIntOrNull() ?: 0

    println("Fatorial = ${fatorial(limite)}")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
