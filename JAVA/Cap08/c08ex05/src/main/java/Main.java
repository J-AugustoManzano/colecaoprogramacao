// Projeto: c08ex05

import java.util.Scanner;
import static java.lang.System.out;


public class Main {
    public static void main(String[] args) {
        String[] NOME = new String[10];

        String RESP = "SIM";
        String PESQ;
        String RESPOSTA;
        int I;
        boolean ACHA;

        Scanner scanner = new Scanner(System.in);

        out.println("PESQUISA SEQUENCIAL DE NOMES\n");

        for (I = 0; I <= 9; ++I) {
            out.printf("Entre o %2do. nome: ", I + 1);
            NOME[I] = scanner.nextLine();
        }

        while (RESP.equals("SIM")) {
            out.print("\nEntre o nome a ser pesquisado: ");
            PESQ = scanner.nextLine();
            I = 0;
            ACHA = false;

            while (I <= 9 && ACHA == false) {
                if (PESQ.equals(NOME[I]))
                    ACHA = true;
                else
                    ++I;
            }

            out.println();
            if (ACHA == true)
                out.println(PESQ + " foi localizado na posicao " + (I + 1));
            else
                out.println(PESQ + " nao foi localizado");

            do {
                out.print("\nDeseja continuar? (SIM/NAO): ");
                RESPOSTA = scanner.nextLine();
                RESP = RESPOSTA.toUpperCase();
                if (!RESP.equals("SIM") && !RESP.equals("NAO"))
                    out.println("Informe apenas SIM ou NAO.");
            } while (!RESP.equals("SIM") && !RESP.equals("NAO"));
        }

        out.print("\nTecle <Enter> para encerrar... ");
        scanner.nextLine();
    }
}
