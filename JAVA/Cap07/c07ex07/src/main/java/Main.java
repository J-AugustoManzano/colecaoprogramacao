// Projeto: c07ex07

import java.util.Scanner;
import static java.lang.System.out;

public class Main {

    static boolean igual(int A, int B) {
        return A == B;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int x, y;

        out.print("Informe o 1o. valor: ");
        x = scanner.nextInt();
        scanner.nextLine();

        out.print("Informe o 2o. valor: ");
        y = scanner.nextInt();
        scanner.nextLine();

        if (igual(x, y)) {
            out.println("Valores sao iguais");
        } else {
            out.println("Valores sao diferentes");
        }

        out.print("\nTecle <Enter> para encerrar... ");
        scanner.nextLine();
    }
}
