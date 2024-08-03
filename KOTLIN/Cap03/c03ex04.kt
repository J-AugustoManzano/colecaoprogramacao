// c03ex04.kt

fun main() {
    var ht: Double
    var vh: Double
    var pd: Double
    var sb: Double
    var td: Double
    var sl: Double

    print("Entre quantidade de horas trabalhadas ..: ")
    ht = readLine()?.toDouble() ?: 0.0

    print("Entre valor do salario-hora ............: ")
    vh = readLine()?.toDouble() ?: 0.0

    print("Entre valor do percentual de desconto ..: ")
    pd = readLine()?.toDouble() ?: 0.0

    sb = ht * vh
    td = (pd / 100) * sb
    sl = sb - td

    println("\nSalario Bruto ....: %9.2f".format(sb))
    println("Salario Liquido ..: %9.2f".format(sl))

    print("\nTecle <Enter> para encerrar... ")
    readLine()
}
