// Projeto: c04ex09

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        int prova1, prova2;
        Scanner entrada = new Scanner(System.in);

        out.println("Classificacao esportiva\n");
        out.println("Entre '1' se atleta pontuou na 1a prova");
        out.println("Entre '1' se atleta pontuou na 2a prova");
        out.println("Qualquer outro valor se nao pontuou nas provas\n");

        out.print("Prova 1: ");
        prova1 = entrada.nextInt();
        entrada.nextLine();

        out.print("Prova 2: ");
        prova2 = entrada.nextInt();
        entrada.nextLine();

        if (prova1 == 1 ^ prova2 == 1)
            out.println("Atleta participa da terceira prova.");
        else {
            out.println("Atleta nao participa da terceira prova.");
            if (prova1 == 1 && prova2 == 1)
                out.println("Classificado para a final.");
            else
                out.println("Desclassificado da competicao.");
        }

        out.print("\nPressione <Enter> para encerrar... ");
        entrada.nextLine();
    }
}