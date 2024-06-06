// c07ex01.swift

import Foundation

func ROTSOMA() {
    print("\nRotina de Adicao\n")
    
    print("Entre o 1o. valor: ", terminator: "")
    if let A1 = Float(readLine() ?? "") {
        print("Entre o 2o. valor: ", terminator: "")
        if let B1 = Float(readLine() ?? "") {
            let R1 = A1 + B1
            print("\nO resultado da operacao equivale a: ", terminator: "")
            print("\(String(format: "%.2f", R1))\n")
        } else {
            print("\nEntrada invalida. Tente novamente.\n")
        }
    } else {
        print("\nEntrada invalida. Tente novamente.\n")
    }
}

func ROTSUBTRACAO() {
    print("\nRotina de Subtracao\n")
    
    print("Entre o 1o. valor: ", terminator: "")
    if let A2 = Float(readLine() ?? "") {
        print("Entre o 2o. valor: ", terminator: "")
        if let B2 = Float(readLine() ?? "") {
            let R2 = A2 - B2
            print("\nO resultado da operacao equivale a: ", terminator: "")
            print("\(String(format: "%.2f", R2))\n")
        } else {
            print("\nEntrada invalida. Tente novamente.\n")
        }
    } else {
        print("\nEntrada invalida. Tente novamente.\n")
    }
}

func ROTMULTIPLICACAO() {
    print("\nRotina de Multiplicacao\n")
    
    print("Entre o 1o. valor: ", terminator: "")
    if let A3 = Float(readLine() ?? "") {
        print("Entre o 2o. valor: ", terminator: "")
        if let B3 = Float(readLine() ?? "") {
            let R3 = A3 * B3
            print("\nO resultado da operacao equivale a: ", terminator: "")
            print("\(String(format: "%.2f", R3))\n")
        } else {
            print("\nEntrada invalida. Tente novamente.\n")
        }
    } else {
        print("\nEntrada invalida. Tente novamente.\n")
    }
}

func ROTDIVISAO() {
    print("\nRotina de Divisao\n")
    
    print("Entre o 1o. valor: ", terminator: "")
    if let A4 = Float(readLine() ?? "") {
        print("Entre o 2o. valor: ", terminator: "")
        if let B4 = Float(readLine() ?? "") {
            if B4 == 0 {
                print("\nO resultado da operacao equivale a: ERRO\n")
            } else {
                let R4 = A4 / B4
                print("\nO resultado da operacao equivale a: ", terminator: "")
                print("\(String(format: "%.2f", R4))\n")
            }
        } else {
            print("\nEntrada invalida. Tente novamente.\n")
        }
    } else {
        print("\nEntrada invalida. Tente novamente.\n")
    }
}

var OPCAO = 0

while (OPCAO != 5) {
    print("CALCULADORA - V1\n")
    print("[1] - Adicao")
    print("[2] - Subtracao")
    print("[3] - Multiplicacao")
    print("[4] - Divisao")
    print("[5] - Fim de Programa\n")
    
    print("Escolha uma opcao: ", terminator: "")
    if let opcao = Int(readLine() ?? "") {
        OPCAO = opcao
        
        if (OPCAO != 5) {
            switch (OPCAO) {
                case 1: ROTSOMA()
                case 2: ROTSUBTRACAO()
                case 3: ROTMULTIPLICACAO()
                case 4: ROTDIVISAO()
                default:
                    print("\nOpcao invalida. Tente novamente.\n")
            }
        }
    } else {
        print("\nEntrada invalida. Tente novamente.\n")
    }
}
