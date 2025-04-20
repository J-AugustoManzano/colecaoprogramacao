// c04ex09.swift

import Foundation

var P1, P2: Int

print("Classificacao esportiva\n")
print("Entre '1' se atleta pontuou na 1a. prova")
print("Entre '1' se atleta pontuou na 2a. prova")
print("Qualquer outro valor se nao pontuou nas provas\n")

print("Prova 1: ", terminator: "")
if let inputP1 = readLine(), let parsedP1 = Int(inputP1) {
    P1 = parsedP1
} else {
    fatalError("Entrada invalida.")
}

print("Prova 2: ", terminator: "")
if let inputP2 = readLine(), let parsedP2 = Int(inputP2) {
    P2 = parsedP2
} else {
    fatalError("Entrada invalida.")
}

if ((P1 == 1 && !(P2 == 1)) || (!(P1 == 1) && P2 == 1)) {
    print("Atleta participa da terceira prova.")
} else {
    print("Atleta nao participa da terceira prova.")
    if (P1 == 1 && P2 == 1) {
        print("Classificado para a final.")
    } else {
        print("Desclassificado da competicao.")
    }
}

print("\n\NTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
