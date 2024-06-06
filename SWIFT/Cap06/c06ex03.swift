// c06ex03.swift

import Foundation

struct Aluno {
    var nome: String
    var turma: Int
    var sala: Int
    var notas: [Float]
}

var alunos = [Aluno](repeating: Aluno(
                 nome: "", 
                 turma: 0, 
                 sala: 0, 
                 notas: [0.0, 0.0, 0.0, 0.0]), count: 8
             )

print("Escola de Computacao XPTO")
print("Cadastro Escolar de Aluno\n")

for i in 0...7 {
    print("Aluno: \(i + 1)\n")

    print("Nome ..............: ", terminator: "")
    if let nome = readLine() {
        alunos[i].nome = nome
    }

    print("Turma .............: ", terminator: "")
    if let turmaStr = readLine(), let turma = Int(turmaStr) {
        alunos[i].turma = turma
    }

    print("Sala ..............: ", terminator: "")
    if let salaStr = readLine(), let sala = Int(salaStr) {
        alunos[i].sala = sala
    }

    print()

    for j in 0...3 {
        print("Entre a \(j + 1)a. nota ..: ", terminator: "")
        if let notaStr = readLine(), let nota = Float(notaStr) {
            alunos[i].notas[j] = nota
        }
    }

    print()
}

print("Escola de Computacao XPTO")
print("Cadastro Escolar de Aluno\n")
print("DADOS DOS ALUNOS")
print("Aluno ", terminator: "")
print("Nome                           ", terminator: "")
print("Sala ", terminator: "")
print("Turma ", terminator: "")
print("Nota1 ", terminator: "")
print("Nota2 ", terminator: "")
print("Nota3 ", terminator: "")
print("Nota4")
print("----- ", terminator: "")
print("------------------------------ ", terminator: "")
print("---- ", terminator: "")
print("----- ", terminator: "")
print("----- ", terminator: "")
print("----- ", terminator: "")
print("----- ", terminator: "")
print("-----")

for i in 0...7 {
    print(String(format: "%5d", i + 1), terminator: " ")
    print(String(format: "%-30s", 
        (alunos[i].nome as NSString).utf8String!), terminator: " ")
    print(String(format: "%4d", alunos[i].sala), terminator: " ")
    print(String(format: "%5d", alunos[i].turma), terminator: " ")
    for j in 0...3 {
        print(String(format: "%5.1f", alunos[i].notas[j]), terminator: " ")
    }
    print()
}

print("\nTecle <Enter> para encerrar... ", terminator: "")
_ = readLine() 
