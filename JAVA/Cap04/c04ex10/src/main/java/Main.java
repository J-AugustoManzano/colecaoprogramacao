// Projeto: c04ex10

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        int A, B, X, C;
        Scanner entrada = new Scanner(System.in);

        out.print("Entre valor para a variavel <A>: ");
        A = entrada.nextInt();
        entrada.nextLine();

        out.print("Entre valor para a variavel <B>: ");
        B = entrada.nextInt();
        entrada.nextLine();

        out.print("Entre valor para a variavel <X>: ");
        X = entrada.nextInt();
        entrada.nextLine();

        if (!(X > 5))
            C = A - B;
        else
            C = A + B;

        out.println("\nResultado = " + C);

        out.print("\nPressione <Enter> para encerrar... ");
        entrada.nextLine();
    }
}