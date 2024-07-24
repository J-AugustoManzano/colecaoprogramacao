
// Projeto: c04ex07

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        int Numero;
        Scanner entrada = new Scanner(System.in);

        out.print("Entre um numero inteiro: ");
        Numero = entrada.nextInt();
        entrada.nextLine();

        if (Numero >= 20 && Numero <= 90)
            out.println("O numero esta na faixa de 20 a 90.");
        else
            out.println("O numero esta fora da faixa de 20 a 90.");

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}
