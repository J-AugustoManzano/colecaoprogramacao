// Projeto: c07ex06

import java.util.Scanner;
import static java.lang.System.out;

public class Main {

    static int fatorial(int N) {
        int fat = 1;
        for (int i = 1; i <= N; i++) {
            fat *= i;
        }
        return fat;
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

