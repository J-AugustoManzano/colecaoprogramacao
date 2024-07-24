// Projeto: c07ex04

import java.util.Scanner;
import static java.lang.System.out;
public class Main {

    public static void fatorial(int N) {
        int fat = 1;
        for (int i = 1; i <= N; i++) {
            fat *= i;
        }
        out.println("Fatorial = " + fat);
    }

    static int limite;

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        out.print("Qual fatorial: ");
        limite = scanner.nextInt();
        scanner.nextLine();

        fatorial(limite);

        out.print("\nTecle <Enter> para encerrar... ");
        scanner.nextLine();
    }
}
