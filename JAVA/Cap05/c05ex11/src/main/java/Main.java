// Projeto: c05ex11

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        int I, N, R;
        Scanner entrada = new Scanner(System.in);

        for (I = 1; I <= 5; I++) {
            out.print("Entre um valor numerico: ");
            N = entrada.nextInt();
            entrada.nextLine();

            R = N * 3;

            out.println("Resultado = " + R + "\n");
        }

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}