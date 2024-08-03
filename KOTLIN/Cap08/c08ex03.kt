// c08ex03.kt

import java.util.*

fun main() {
    val numeros = IntArray(5)
    var x: Int

    println("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n")

    for (i in 0..4) {
        print("${i + 1}o. numero: ")
        numeros[i] = readLine()?.toIntOrNull() ?: continue
    }

    for (i in 0..3) 
        for (j in i + 1..4)
            if (numeros[i] > numeros[j]) {
                x = numeros[i]
                numeros[i] = numeros[j]
                numeros[j] = x
            }

    println()
    for (i in 0..4)
        println("${i + 1}o. numero: ${numeros[i]}")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
