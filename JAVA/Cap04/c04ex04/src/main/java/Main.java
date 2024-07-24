// Projeto: c04ex04

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        float N1, N2, N3, N4, NE, MD1, MD2;
        Scanner entrada = new Scanner(System.in);

        out.print("Entre a 1a. nota .......: ");
        N1 = entrada.nextFloat();
        entrada.nextLine();

        out.print("Entre a 2a. nota .......: ");
        N2 = entrada.nextFloat();
        entrada.nextLine();

        out.print("Entre a 3a. nota .......: ");
        N3 = entrada.nextFloat();
        entrada.nextLine();

        out.print("Entre a 4a. nota .......: ");
        N4 = entrada.nextFloat();
        entrada.nextLine();

        MD1 = (N1 + N2 + N3 + N4) / 4;

        out.println();
        if (MD1 >= 7) {
            out.println("Aprovado");
            out.printf("Media: %.2f\n", MD1);
        } else {
            out.print("Entre a nota de exame ..: ");
            NE = entrada.nextFloat();
            entrada.nextLine();

            MD2 = (MD1 + NE) / 2;

            out.println();
            if (MD2 >= 5)
                out.println("Aprovado em exame");
            else
                out.println("Reprovado");
            out.printf("Media: %.2f\n", MD2);
        }

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}