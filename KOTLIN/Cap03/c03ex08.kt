// c03ex08.kt

/*
 Programa exemplo para operações de duas entradas
 com cálculo de adição e apresentação de resultado.
*/

fun main() {
    var A: Int
    var B: Int
    var X: Int
    
    // Entrada de dados

    print("Entre o 1o. valor numerico inteiro: ")
    A = readLine()?.toInt() ?: 0

    print("Entre o 2o. valor numerico inteiro: ")
    B = readLine()?.toInt() ?: 0
    
    // Processamento de dados

    X = A + B // Cálculo da adição
    
    // Saída de dados

    println("Resultado = $X")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
