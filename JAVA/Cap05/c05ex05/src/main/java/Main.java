// Projeto: c05ex05

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        int I, N, R;
        Scanner entrada = new Scanner(System.in);

        I = 1;
        do {
            out.print("Entre um valor numerico: ");
            N = entrada.nextInt();
            entrada.nextLine();

            R = N * 3;

            out.println("Resultado = " + R + "\n");

            I++;
        } while (!(I > 5));

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}
