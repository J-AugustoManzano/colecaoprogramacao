// Projeto: c03ex02

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        double R, A;
        Scanner entrada = new Scanner(System.in);

        out.print("Entre valor do raio: ");
        R = entrada.nextDouble();
        entrada.nextLine();

        A = Math.PI * Math.pow(R, 2);

        out.printf("Resultado = %.2f\n", A);

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}