// c08ex09.swift

import Foundation

func Fibonacci(_ N: Int) -> Int {
    if (N == 0) {
        return 0
    }
    if (N == 1) {
        return 1
    }
    if (N >= 2) {
        return Fibonacci(N - 1) + Fibonacci(N - 2)
    }
    return 0
}

for I in 0...14 {
    print("\(String(format: "%2d", I)) - \(Fibonacci(I))")
}

print()
print("Tecle <Enter> para encerrar... ", terminator: "")
_ = readLine()
