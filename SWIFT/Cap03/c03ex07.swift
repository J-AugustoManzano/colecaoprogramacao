// c03ex07.swift

import Foundation

var frase = "Aprendendo Swift com o Professor Manzano"
var palavras = [String](repeating: "", count: 10)

print("Frase ......: \(frase)")
print("              ----------------------------------------")
print("              0000000001111111111222222222233333333333")
print("              0123456789012345678901234567890123456789")
print("\n")

print("Tamanho ....: \(frase.count) caracteres\n")

let separador = " "
let componentes = frase.split(separator: " ").map { String($0) }

for i in 0..<min(componentes.count, palavras.count) {
    palavras[i] = componentes[i]
}

print("Palavra 1 .............: \(palavras[0])")
print("Palavra 2 .............: \(palavras[1])")
print("Palavra 3 .............: \(palavras[2])")
print("Palavra 4 .............: \(palavras[3])")
print("\n")

if palavras[0].count >= 4 {
    let palavra = palavras[0]
    let inicio = palavra.startIndex
    let indice1 = inicio
    let indice2 = palavra.index(inicio, offsetBy: 1)
    let indice3 = palavra.index(inicio, offsetBy: 2)
    let indice4 = palavra.index(inicio, offsetBy: 3)

    print("Letra 1 da Palavra 1 ..: \(palavra[indice1])")
    print("Letra 2 da Palavra 1 ..: \(palavra[indice2])")
    print("Letra 3 da Palavra 1 ..: \(palavra[indice3])")
    print("Letra 4 da Palavra 1 ..: \(palavra[indice4])")
}

let intervalo = frase.range(of: "Swift")!
let posicao = frase.distance(from: frase.startIndex, to: 
              intervalo.lowerBound) + 1
print("\nA palavra 'Swift' na posição: \(posicao)\n")

print("Tecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
