// c06ex02.swift

import Foundation

var NOTAS = [[Double]](repeating: [Double](repeating: 0.0, count: 4), count: 8)

for I in 0...7 {
    print("Entre as notas do aluno \(I + 1):")
    for J in 0...3 {
        while true {
            print("Nota \(J + 1): ", terminator: "")
            if let inputNota = readLine(), let nota = Double(inputNota) {
                NOTAS[I][J] = nota
                break // Sai do loop enquanto a entrada for válida
            } else {
                print("\nEntrada invalida. Tente novamente.\n")
            }
        }
    }
    print()
}

print("\nRELATORIO DE NOTAS\n")
print("Aluno Nota1 Nota2 Nota3 Nota4")
print("----- ----- ----- ----- -----")
for I in 0...7 {
    print(String(format: "%5d", I), terminator: " ")
    for J in 0...3 {
        print(String(format: "%5.1lf", NOTAS[I][J]), terminator: " ")
    }
    print()
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
