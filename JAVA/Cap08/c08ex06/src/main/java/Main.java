// Projeto: c08ex06

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        int[] NUMERO = new int[10];
        int I, J, X, PESQ, COMECO, FINAL, MEIO = 0;
        boolean ACHA;

        String RESP, RESPOSTA;

        Scanner scanner = new Scanner(System.in);

        out.println("PESQUISA BINARIA DE NUMEROS\n");

        for (I = 0; I <= 9; ++I) {
            out.printf("Entre o %2do. numero: ", I + 1);
            NUMERO[I] = scanner.nextInt();
            scanner.nextLine();
        }

        for (I = 0; I <= 8; ++I)
            for (J = I + 1; J <= 9; ++J)
                if (NUMERO[I] > NUMERO[J]) {
                    X = NUMERO[I];
                    NUMERO[I] = NUMERO[J];
                    NUMERO[J] = X;
                }

        RESP = "SIM";
        while (RESP.equals("SIM")) {
            out.print("\nEntre o numero a ser pesquisado: ");
            PESQ = scanner.nextInt();

            COMECO = 0;
            FINAL = 9;
            ACHA = false;

            while (COMECO <= FINAL && ACHA == false) {
                MEIO = (COMECO + FINAL) / 2;
                if (PESQ == NUMERO[MEIO])
                    ACHA = true;
                else if (PESQ < NUMERO[MEIO])
                    FINAL = MEIO - 1;
                else
                    COMECO = MEIO + 1;
            }

            out.println();
            if (ACHA == true)
                out.println(PESQ + " foi localizado na posicao " + (MEIO + 1));
            else
                out.println(PESQ + " nao foi localizado");

            do {
                out.print("\nDeseja continuar? (SIM/NAO): ");
                RESPOSTA = scanner.next();
                RESP = RESPOSTA.toUpperCase();
                if (!RESP.equals("SIM") && !RESP.equals("NAO"))
                    out.println("Informe apenas SIM ou NAO.");
            } while (!RESP.equals("SIM") && !RESP.equals("NAO"));
        }

        out.print("\nTecle <Enter> para encerrar... ");
        scanner.nextLine();
    }
}
