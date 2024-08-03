// c08ex04.kt

fun main() {
    var nomes = Array<String>(5) { "" }
    var x: String

    println("CLASSIFICACAO DE NOMES (DECRESCENTE)\n")

    for (i in 0..4) {
        print("${i + 1}o. nome: ")
        nomes[i] = readLine() ?: ""
    }

    for (i in 0..3) 
        for (j in i + 1..4) 
            if (nomes[i].compareTo(nomes[j], ignoreCase = true) > 0) {
                x = nomes[i]
                nomes[i] = nomes[j]
                nomes[j] = x
            }

    println()
    for (i in 0..4)
        println("${i + 1}º nome: ${nomes[i]}")

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
