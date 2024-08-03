// c07ex09.kt

fun fatorialBase(N: Int, P: Int): Int {
    if (N == 0)
        return P
    else
        return fatorialBase(N - 1, N * P)
}

fun fatorial(N: Int): Int {
    return fatorialBase(N, 1)
}

fun main() {
    var limite: Int

    print("Qual fatorial: ")
    limite = readLine()?.toIntOrNull() ?: 0

    println("Fatorial = ${fatorial(limite)}")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
