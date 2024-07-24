// Projeto: c04ex08

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        char Transp;
        Scanner entrada = new Scanner(System.in);

        out.println("Escolha o tipo de transporte:\n");
        out.println("[M] - Motocicleta");
        out.println("[S] - Scooter\n");

        out.print("==> ");
        Transp = Character.toUpperCase(entrada.nextLine().charAt(0));

        out.println();
        if (Transp == 'M' || Transp == 'S')
            out.println("Transporte valido.");
        else
            out.println("Transporte invalido.");

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}