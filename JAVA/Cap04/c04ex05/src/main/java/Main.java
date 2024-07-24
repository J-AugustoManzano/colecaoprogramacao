// Projeto: c04ex05

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        int Mes;
        Scanner entrada = new Scanner(System.in);

        out.print("Entre com um numero equivalente a um mes: ");
        Mes = entrada.nextInt();
        entrada.nextLine();

        switch (Mes) {
            case 1:
                out.println("Janeiro");
                break;
            case 2:
                out.println("Fevereiro");
                break;
            case 3:
                out.println("Marco");
                break;
            case 4:
                out.println("Abril");
                break;
            case 5:
                out.println("Maio");
                break;
            case 6:
                out.println("Junho");
                break;
            case 7:
                out.println("Julho");
                break;
            case 8:
                out.println("Agosto");
                break;
            case 9:
                out.println("Setembro");
                break;
            case 10:
                out.println("Outubro");
                break;
            case 11:
                out.println("Novembro");
                break;
            case 12:
                out.println("Dezembro");
                break;
            default:
                out.println("Mes invalido");
                break;
        }

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}