// c08ex04.swift

import Foundation

var Nomes: [String] = Array(repeating: "", count: 5)
var X: String = ""

print("CLASSIFICACAO DE NOMES (DECRESCENTE)\n")

for i in 0...4 {
    print("Entre o \(i+1)o. nome: ", terminator: "")
    if let input = readLine() {
        Nomes[i] = input.trimmingCharacters(in: .newlines)
    }
}

for i in 0...3 {
    for j in i+1...4 {
        if (Nomes[i] < Nomes[j]) {
            X = Nomes[i]
            Nomes[i] = Nomes[j]
            Nomes[j] = X
        }
    }
}

print("\n")
for i in 0...4 {
    print("\(i+1)o. nome: \(Nomes[i])")
}

print()
print("Tecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
