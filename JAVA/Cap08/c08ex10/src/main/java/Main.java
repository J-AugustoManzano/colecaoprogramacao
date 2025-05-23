// Projeto: c08ex10

import java.util.Scanner;

public class Main {
    static int FibonacciBase(int N, int X, int Y) {
        if (N == 0)
            return X;
        if (N == 1)
            return Y;
        if (N >= 2)
            return FibonacciBase(N - 1, Y, X + Y);
    }

    static int Fibonacci(int N) {
        return FibonacciBase(N, 0, 1);
    }

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
      
        for (int I = 0; I <= 14; I++)
            System.out.println(I + " - " + Fibonacci(I));

        System.out.print("\nPressione <Enter> para sair... ");
      entrada.nextLine();
    }
}
