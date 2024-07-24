// Projeto: c07ex09

import java.util.Scanner;
import static java.lang.System.out;

public class Main {

    static int fatorialBase(int N, int P) {
        if (N == 0) {
            return P;
        } else {
            return fatorialBase(N - 1, N * P);
        }
    }

    static int fatorial(int N) {
        return fatorialBase(N, 1);
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int limite;

        out.print("Qual fatorial: ");
        limite = scanner.nextInt();
        scanner.nextLine();

        out.println("Fatorial = " + fatorial(limite));

        out.print("\nTecle <Enter> para encerrar... ");
        scanner.nextLine();
    }
}

