// Projeto: c08ex03

import java.util.Scanner;
import static java.lang.System.out;

public class Main {

    public static void main(String[] args) {
        int[] numeros = new int[5];
        int i, j, x;
        Scanner scanner = new Scanner(System.in);

        out.println("CLASSIFICACAO DE NUMEROS (CRESCENTE)\n");

        for (i = 0; i <= 4; i++) {
            out.printf("%do. numero: ", i + 1);
            numeros[i] = scanner.nextInt();
            scanner.nextLine();
        }

        for (i = 0; i <= 3; i++)
            for (j = i + 1; j <= 4; j++)
                if (numeros[i] > numeros[j]) {
                    x = numeros[i];
                    numeros[i] = numeros[j];
                    numeros[j] = x;
                }

        out.println();
        for (i = 0; i <= 4; i++)
            out.println((i + 1) + "o. numero: " + numeros[i]);

        out.print("\nTecle <Enter> para encerrar... ");
        scanner.nextLine();
    }
}
