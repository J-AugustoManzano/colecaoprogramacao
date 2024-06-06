// c03ex05.swift

import Foundation

var nome: String

print("Entre seu nome: ", terminator: "")
if let inputNome = readLine() {
    nome = inputNome
    print("Ola, \(nome)! Bem-vindo ao estudo de Swift.")
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
