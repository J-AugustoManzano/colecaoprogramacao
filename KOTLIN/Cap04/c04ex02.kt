// c04ex02.kt

fun main() {
    var A: Int
    var B: Int
    var X: Int

    print("Entre o 1o. valor numerico: ")
    A = readLine()?.toInt() ?: 0

    print("Entre o 2o. valor numerico: ")
    B = readLine()?.toInt() ?: 0

    if (A > B) {
        X = A
        A = B
        B = X
    }

    println("Os valores sao: $A e $B.")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
