// Projeto: c05ex04

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        char RESP;
        int N, R;
        Scanner entrada = new Scanner(System.in);

        RESP = 'S';
        while (!(Character.toUpperCase(RESP) != 'S')) {
            out.print("Entre um valor numerico: ");
            N = entrada.nextInt();
            entrada.nextLine();

            R = N * 3;

            out.println("Resultado = " + R + "\n");

            out.print("Deseja continuar? (S/N): ");
            RESP = Character.toUpperCase(entrada.next().charAt(0));

            out.println();
        }

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}