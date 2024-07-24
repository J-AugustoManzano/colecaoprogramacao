// Projeto: c07ex03

import java.util.Scanner;
import static java.lang.System.out;

public class Main {

    static int A, B;

    public static void troca() {
        int X = A;
        A = B;
        B = X;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        out.print("Entre um valor para a variavel <A>: ");
        A = scanner.nextInt();
        scanner.nextLine();

        out.print("Entre um valor para a variavel <B>: ");
        B = scanner.nextInt();
        scanner.nextLine();

        troca();

        out.println();
        out.println("Variavel <A> com valor " + A);
        out.println("Variavel <B> com valor " + B);

        out.print("\nTecle <Enter> para encerrar... ");
        scanner.nextLine();
    }
}

