// c08ex07.swift

import Foundation

let LIMITE = 10
var MATRIZ = [Int](repeating: 0, count: LIMITE)
var TOPO = -1

func Vazia() -> Bool {
    if (TOPO == -1) {
      return true
    } else {
      return false
    }
}

func Cheia() -> Bool {
    if (TOPO == LIMITE - 1) {
      return true;
    } else {
      return false;
    }
}

func Adicionar(_ ELEMENTO: Int) -> Bool {
    if (Cheia()) {
        return false
    } else {
        TOPO += 1
        MATRIZ[TOPO] = ELEMENTO
        return true
    }
}

func Retirar(_ ELEMENTO: inout Int) -> Bool {
    if (Vazia()) {
        return false
    } else {
        ELEMENTO = MATRIZ[TOPO]
        MATRIZ[TOPO] = 0
        TOPO -= 1
        return true
    }
}

func Empilhar() {
    print("Entre com um elemento numerico: ", terminator: "")
    if let X = Int(readLine() ?? "") {
        if (Adicionar(X)) {
            print("\nElemento \(X) inserido na posicao \(TOPO).\n")
        } else {
            print("\nImpossivel adicionar \(X) - pilha cheia.\n")
        }
    } else {
        print("\nEntrada invalida.\n")
    }
}

func Desempilhar() {
    var ELEMENTO: Int = 0
    if (Retirar(&ELEMENTO)) {
        print("Elemento \(ELEMENTO) retirado do topo da pilha.\n")
    } else {
        print("Impossivel retirar elemento - pilha vazia.\n")
    }
}

func Mostrar() {
    if (!(Vazia())) {
        for i in (0...TOPO).reversed() {
            print("Posicao: \(String(format: "%2d", i+1)) = \(MATRIZ[i])")
        }
    } else {
        print("Impossivel apresentar - pilha vazia.\n")
    }
    print()
}

func Criar() {
    TOPO = -1
    for i in 0...LIMITE - 1 {
        MATRIZ[i] = 0
    }
}

var opcao = 0
while (opcao != 5) {
    print("PROGRAMA: PILHA\n")
    print("[1] - Empilhar")
    print("[2] - Desempilhar")
    print("[3] - Mostrar")
    print("[4] - Criar pilha")
    print("[5] - Sair\n")
    print("Escolha uma opcao: ", terminator: "")

    if let entrada = readLine(), let op = Int(entrada) {
        opcao = op
        print()
        if (opcao != 5) {
            switch opcao {
                case 1: Empilhar()
                case 2: Desempilhar()
                case 3: Mostrar()
                case 4: Criar()
                default: print("Opcao invalida. Tente novamente.\n")
            }
        }
    } else {
        print("Entrada invalida. Tente novamente.\n")
    }
}
