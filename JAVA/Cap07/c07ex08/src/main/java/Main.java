// Projeto: c07ex08

import java.util.Scanner;
import static java.lang.System.out;

public class Main {

    static int fatorial(int N) {
        if (N == 0) {
            return 1;
        } else {
            return N * fatorial(N - 1);
        }
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
