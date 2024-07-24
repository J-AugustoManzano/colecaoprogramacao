// Projeto: c07ex05

import java.util.Scanner;
import static java.lang.System.out;

public class Main {

    static void fatorial(int N, int[] fat) {
        fat[0] = 1;
        for (int i = 1; i <= N; i++) {
            fat[0] *= i;
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int limite;
        int[] resp = new int[1];

        out.print("Qual fatorial: ");
        limite = scanner.nextInt();
        scanner.nextLine();

        fatorial(limite, resp);

        out.println("Fatorial = " + resp[0]);

        out.print("\nTecle <Enter> para encerrar... ");
        scanner.nextLine();
    }
}
