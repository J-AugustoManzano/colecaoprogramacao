// c08ex10.swift

import Foundation

func FibonacciBase(_ N: Int, _ X: Int, _ Y: Int) -> Int {
    if (N == 0) {
        return X
    } else if (N == 1) {
        return Y
    } else {
        return FibonacciBase(N - 1, Y, X + Y)
    }
}

func Fibonacci(_ N: Int) -> Int {
    return FibonacciBase(N, 0, 1)
}

for I in 0...14 {
    print("\(String(format: "%2d", I)) - \(Fibonacci(I))")
}

print()
print("Tecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
