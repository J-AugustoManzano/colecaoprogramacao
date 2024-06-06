// c03ex06.swift

import Foundation

func trocar(_ palavra: inout [Character], 
            _ posicao: Int, _ novoCaractere: Character) {
    palavra[posicao] = novoCaractere
}

func centro(_ palavra: [Character]) -> String {
    let tamanho = palavra.count
    let inicio = tamanho / 2 - 2
    let fim = tamanho / 2 + 1
    let segmento = palavra[inicio...fim]
    return String(segmento)
}

var palavra: [Character] = Array("COMPUTADOR")
let tamanho = palavra.count
var copias = ""

var novaPalavra = palavra
trocar(&novaPalavra, 6, "O")

print("Palavra ........: \(String(palavra))")
print("")
print("Lado esquerdo ..: \(String(palavra.prefix(3)))")
print("Centro .........: \(centro(palavra))")
print("Lado direito ...: \(String(palavra.suffix(3)))")
print("Reverso ........: \(String(palavra.reversed()))")
copias = String(palavra) + String(palavra) + String(palavra)
print("Copias .........: \(copias)")
print("Nova palavra ...: \(String(novaPalavra))")

print("")
print("Tecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
