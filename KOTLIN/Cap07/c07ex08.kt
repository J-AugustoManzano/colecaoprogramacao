// c07ex08.kt

fun fatorial(N: Int): Int {
    if (N == 0) {
        return 1
    } else {
        return N * fatorial(N - 1)
    }
}

fun main() {
    var limite: Int

    print("Qual fatorial: ")
    limite = readLine()?.toIntOrNull() ?: 0

    println("Fatorial = ${fatorial(limite)}")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
