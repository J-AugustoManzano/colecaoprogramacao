// Projeto: c07ex02

import java.util.Scanner;
import static java.lang.System.out;

public class Main {

    public static void main(String[] args) {
        int A, B, X;
        Scanner scanner = new Scanner(System.in);

        out.print("Entre um valor para a variavel <A>: ");
        A = scanner.nextInt();
        scanner.nextLine();

        out.print("Entre um valor para a variavel <B>: ");
        B = scanner.nextInt();
        scanner.nextLine();

        X = A;
        A = B;
        B = X;

        out.println();
        out.println("Variavel <A> com valor " + A);
        out.println("Variavel <B> com valor " + B);

        out.print("\nTecle <Enter> para encerrar... ");
        scanner.nextLine();
    }
}
