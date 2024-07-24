// Projeto: c04ex03

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        int A, B, X, R;
        Scanner entrada = new Scanner(System.in);

        out.print("Entre o 1o. valor numerico: ");
        A = entrada.nextInt();
        entrada.nextLine();

        out.print("Entre o 2o. valor numerico: ");
        B = entrada.nextInt();
        entrada.nextLine();

        X = A + B;

        if (X >= 10)
            R = X + 5;
        else
            R = X - 7;

        out.println("Resultado = " + R);

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}