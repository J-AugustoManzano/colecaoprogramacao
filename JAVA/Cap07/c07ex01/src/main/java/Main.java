// Projeto: c07ex01

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static Scanner scanner = new Scanner(System.in);
  
    public static void rotinaDeAdicao() {
        float a1, b1, r1;
        out.println();
        out.println("Rotina de Adicao");
        out.println();
        out.print("Entre o 1o. valor: ");
        a1 = scanner.nextFloat();
        scanner.nextLine();
        out.print("Entre o 2o. valor: ");
        b1 = scanner.nextFloat();
        scanner.nextLine();
        out.println();
        r1 = a1 + b1;
        out.println("O resultado da operacao equivale a: " + r1);
        out.println();
    }

    public static void rotinaDeSubtracao() {
        float a2, b2, r2;
        out.println();
        out.println("Rotina de Subtracao");
        out.println();
        out.print("Entre o 1o. valor: ");
        a2 = scanner.nextFloat();
        scanner.nextLine();
        out.print("Entre o 2o. valor: ");
        b2 = scanner.nextFloat();
        scanner.nextLine();
        out.println();
        r2 = a2 - b2;
        out.println("O resultado da operacao equivale a: " + r2);
        out.println();
    }

    public static void rotinaDeMultiplicacao() {
        float a3, b3, r3;
        out.println();
        out.println("Rotina de Multiplicacao");
        out.println();
        out.print("Entre o 1o. valor: ");
        a3 = scanner.nextFloat();
        scanner.nextLine();
        out.print("Entre o 2o. valor: ");
        b3 = scanner.nextFloat();
        scanner.nextLine();
        out.println();
        r3 = a3 * b3;
        out.println("O resultado da operacao equivale a: " + r3);
        out.println();
    }

    public static void rotinaDeDivisao() {
        float a4, b4, r4;
        out.println();
        out.println("Rotina de Divisao");
        out.println();
        out.print("Entre o 1o. valor: ");
        a4 = scanner.nextFloat();
        scanner.nextLine();
        out.print("Entre o 2o. valor: ");
        b4 = scanner.nextFloat();
        scanner.nextLine();
        out.println();
        if (b4 == 0)
            out.println("O resultado da operacao equivale a: ERRO");
        else {
            r4 = a4 / b4;
            out.println("O resultado da operacao equivale a: " + r4);
        }
        out.println();
    }

    public static void main(String[] args) {
        int opcao = 0;
        while (opcao != 5) {
            out.println("CALCULADORA - V1");
            out.println();
            out.println("[1] - Adicao");
            out.println("[2] - Subtracao");
            out.println("[3] - Multiplicacao");
            out.println("[4] - Divisao");
            out.println("[5] - Fim de Programa");
            out.println();
            out.print("Escolha uma opcao: ");
            opcao = scanner.nextInt();
            scanner.nextLine();

            if (opcao != 5) {
                switch (opcao) {
                    case 1:
                        rotinaDeAdicao();
                        break;
                    case 2:
                        rotinaDeSubtracao();
                        break;
                    case 3:
                        rotinaDeMultiplicacao();
                        break;
                    case 4:
                        rotinaDeDivisao();
                        break;
                    default:
                        out.println();
                        out.println("Opcao invalida - Tente novamente");
                        out.println();
                        break;
                }
            }
        }
    }
}
