// Projeto: c06ex01

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        double[] MD = new double[8];
        double SOMA = 0.0, MEDIA;
        Scanner entrada = new Scanner(System.in);

        for (int I = 0; I <= 7; I++) {
            out.printf("Entre a media do aluno %d: ", I + 1);
            MD[I] = entrada.nextDouble();
            entrada.nextLine();
            SOMA += MD[I];
        }

        MEDIA = SOMA / 8;

        out.println();
        out.printf("Media geral: %.2f\n", MEDIA);

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}