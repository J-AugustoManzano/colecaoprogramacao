// Projeto: c08ex04

import java.util.Scanner;
import static java.lang.System.out;

public class Main {

    public static void main(String[] args) {
        String[] nomes = new String[5];
        String x;
        Scanner scanner = new Scanner(System.in);

        int i, j;

        out.println("CLASSIFICACAO DE NOMES (DECRESCENTE)\n");

        for (i = 0; i <= 4; i++) {
            out.printf("%do. nome: ", i + 1);
            nomes[i] = scanner.nextLine();
        }

        for (i = 0; i <= 3; i++)
            for (j = i + 1; j <= 4; j++)
                if (nomes[i].compareToIgnoreCase(nomes[j]) > 0) {
                    x = nomes[i];
                    nomes[i] = nomes[j];
                    nomes[j] = x;
                }

        out.println();
        for (i = 0; i <= 4; i++)
            out.println((i + 1) + "º nome: " + nomes[i]);

        out.print("\nTecle <Enter> para encerrar... ");
      scanner.nextLine();
    }
}
