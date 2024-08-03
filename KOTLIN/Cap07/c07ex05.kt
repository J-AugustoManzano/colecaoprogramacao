// c07ex05.kt

fun fatorial(N: Int, fat: IntArray) {
    fat[0] = 1
    for (i in 1..N) {
        fat[0] *= i
    }
}

fun main() {
    var limite: Int
    var resp = IntArray(1)

    print("Qual fatorial: ")
    limite = readLine()?.toIntOrNull() ?: 0

    fatorial(limite, resp)

    println("Fatorial = ${resp[0]}")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
