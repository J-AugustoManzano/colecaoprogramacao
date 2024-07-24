// Projeto: c05ex08

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        char RESP;
        int N, R;
        Scanner entrada = new Scanner(System.in);

        RESP = 'S';
        do {
            out.print("Entre um valor numerico: ");
            N = entrada.nextInt();
            entrada.nextLine();

            R = N * 3;

            out.println("Resultado = " + R + "\n");

            out.print("Deseja continuar? (S/N): ");
            RESP = Character.toUpperCase(entrada.next().charAt(0));

            out.println();
        } while (Character.toUpperCase(RESP) == 'S');

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}