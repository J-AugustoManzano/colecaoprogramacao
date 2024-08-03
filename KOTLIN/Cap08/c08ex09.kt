// c08ex09.kt

fun Fibonacci(N: Int): Int {
    if (N == 0) {
        return 0
    }
    if (N == 1) {
        return 1
    }
    if (N >= 2) {
        return Fibonacci(N - 1) + Fibonacci(N - 2)
    }
    return 0 // Para evitar aviso de retorno implícito
}

fun main() {
    for (I in 0..14) {
        println("$I - ${Fibonacci(I)}")
    }

    print("\nTecle <Enter> para sair... ")
    readLine()
}
