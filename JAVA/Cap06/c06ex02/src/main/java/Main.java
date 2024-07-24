// Projeto: c06ex02

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        double[][] NOTAS = new double[8][4];
        int I, J;
        Scanner entrada = new Scanner(System.in);

        for (I = 0; I <= 7; ++I) {
            out.printf("Entre as notas do aluno %d:\n", I + 1);
            for (J = 0; J <= 3; ++J) {
                out.printf("Nota %d: ", J + 1);
                NOTAS[I][J] = entrada.nextDouble();
                entrada.nextLine();
            }
            out.println();
        }

        out.println("\nRELATORIO DE NOTAS\n");
        out.println("Aluno Nota1 Nota2 Nota3 Nota4");
        out.println("----- ----- ----- ----- -----");
        for (I = 0; I <= 7; ++I) {
            out.printf("%5d", I + 1);
            for (J = 0; J <= 3; ++J) {
                out.printf("%6.1f", NOTAS[I][J]);
            }
            out.println();
        }

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}