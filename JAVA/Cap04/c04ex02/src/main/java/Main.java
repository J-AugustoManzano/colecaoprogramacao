// Projeto: c04ex02

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        int A, B, X;
        Scanner entrada = new Scanner(System.in);

        out.print("Entre o 1o. valor numerico: ");
        A = entrada.nextInt();
        entrada.nextLine();

        out.print("Entre o 2o. valor numerico: ");
        B = entrada.nextInt();
        entrada.nextLine();

        if (A > B) {
            X = A;
            A = B;
            B = X;
        }

        out.println("Os valores sao: " + A + " e " + B + ".");

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}