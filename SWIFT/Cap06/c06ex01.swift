// c06ex01.swift

import Foundation

var MD = [Double](repeating: 0.0, count: 8)

var SOMA: Double = 0.0
var MEDIA: Double
var I: Int

I = 0
while (I <= 7) {
    print("Entre a média do aluno \(I + 1): ", terminator: "")
    if let inputMD = readLine(), let media = Double(inputMD) {
        MD[I] = media
        SOMA += MD[I] 
        I += 1
    } else {
        print("\nEntrada inválida. Tente novamente.\n")
    }
}

MEDIA = SOMA / 8.0

print("\nMédia geral: \(String(format: "%.2f", MEDIA))")

print()
print("Tecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
