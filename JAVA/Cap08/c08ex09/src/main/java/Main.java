// Projeto: c08ex09

import java.util.Scanner;

public class Main {
    static int Fibonacci(int N) {
        if (N == 0)
            return 0;
        if (N == 1)
            return 1;
        if (N >= 2)
            return Fibonacci(N - 1) + Fibonacci(N - 2);
        return 0; // Para evitar aviso de retorno implícito
    }

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
      
        for (int I = 0; I <= 14; I++)
            System.out.println(I + " - " + Fibonacci(I));

        System.out.print("\nPressione <Enter> para sair... ");
        entrada.nextLine();
    }
}
