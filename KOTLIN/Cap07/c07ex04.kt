// c07ex04.kt

fun fatorial(N: Int) {
    var fat = 1
    for (i in 1..N) {
        fat *= i
    }
    println("Fatorial = $fat")
}

var limite: Int = 0

fun main() {
    print("Qual fatorial: ")
    limite = readLine()?.toIntOrNull() ?: 0

    fatorial(limite)

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
