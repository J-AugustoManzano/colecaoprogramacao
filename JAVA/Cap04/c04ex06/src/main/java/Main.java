// Projeto: c04ex06

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        float A, B;
        int Opcao;
        Scanner entrada = new Scanner(System.in);

        out.print("Entre o 1o. valor numerico: ");
        A = entrada.nextFloat();
        entrada.nextLine();

        out.print("Entre o 2o. valor numerico: ");
        B = entrada.nextFloat();
        entrada.nextLine();

        out.println();
        out.println("Escolha uma opcao de menu:");
        out.println();

        out.println("[1] - Adicao");
        out.println("[2] - Subtracao");
        out.println("[3] - Multiplicacao");
        out.println("[4] - Divisao");
        out.println();

        out.print("==> ");
        Opcao = entrada.nextInt();
        entrada.nextLine();
        out.println();

        switch (Opcao) {
            case 1:
                out.println("Calculo de adicao");
                out.printf("Resultado: %.2f\n", A + B);
                break;
            case 2:
                out.println("Calculo de subtracao");
                out.printf("Resultado: %.2f\n", A - B);
                break;
            case 3:
                out.println("Calculo de multiplicacao");
                out.printf("Resultado: %.2f\n", A * B);
                break;
            case 4:
                out.println("Calculo de divisao");
                if (B == 0)
                    out.println("Resultado: ERRO");
                else
                    out.printf("Resultado: %.2f\n", A / B);
                break;
            default:
                out.println("Entrada invalida");
                out.println("Tente novamente em outro momento");
                break;
        }

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}