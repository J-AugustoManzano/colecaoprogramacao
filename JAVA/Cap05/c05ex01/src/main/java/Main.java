// Projeto: c05ex01

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        int I, N, R;
        Scanner entrada = new Scanner(System.in);

        I = 1;
        while (I <= 5) {
            out.print("Entre um valor numerico: ");
            N = entrada.nextInt();
            entrada.nextLine();

            R = N * 3;

            out.println("Resultado = " + R + "\n");

            I++;
        }

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}