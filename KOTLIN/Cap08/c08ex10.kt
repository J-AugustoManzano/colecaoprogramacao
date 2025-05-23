// c08ex10.kt

fun FibonacciBase(N: Int, X: Int, Y: Int): Int {
    if (N == 0) {
        return X
    } 
    if (N == 1) {
        return Y
    } 
    if (N >= 2) {
        return FibonacciBase(N - 1, Y, X + Y)
    }
    return 0;
}

fun Fibonacci(N: Int): Int {
    return FibonacciBase(N, 0, 1)
}

fun main() {
    for (I in 0..14) {
        println("$I - ${Fibonacci(I)}")
    }

    print("\nTecle <Enter> para sair... ")
    readLine()
}
