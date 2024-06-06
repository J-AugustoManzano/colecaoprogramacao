// c08ex03.swift

import Foundation

var Numeros: [Int] = Array(repeating: 0, count: 5)

print("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n")

for i in 0...4 {
    print("Entre o \(i+1)o. numero: ", terminator: "")
    if let input = readLine() {
        Numeros[i] = Int(input) ?? 0
    }
}

for i in 0...3 {
    for j in i+1...4 {
        if (Numeros[i] > Numeros[j]) {
            let x = Numeros[i]
            Numeros[i] = Numeros[j]
            Numeros[j] = x
        }
    }
}

print()
for i in 0...4 {
    print("\(i+1)o. numero: \(Numeros[i])")
}

print()
print("Tecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
