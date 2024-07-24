// Projeto: c06ex04

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        int N;
        List<String> A = new ArrayList<>();
        Scanner scanner = new Scanner(System.in);

        out.print("Entre a quantidade de elementos da matriz: ");
        N = Integer.parseInt(scanner.nextLine());
        scanner.nextLine();
        out.println();

        for (int I = 0; I <= N - 1; ++I) {
            out.printf("Entre o %do. nome: ", I + 1);
            A.add(scanner.nextLine());
        }

        out.println();
        out.println("Foram fornecidos os nomes:");
        out.println();

        for (int I = 0; I <= N - 1; ++I) {
            out.printf("Nome %d = %s\n", I + 1, A.get(I));
        }

        out.print("\nTecle <Enter> para encerrar... ");
        scanner.nextLine();
    }
}