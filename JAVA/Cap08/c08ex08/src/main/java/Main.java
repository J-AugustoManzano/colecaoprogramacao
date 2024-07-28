// Projeto: c08ex08

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    final static int FIM = 10;
    static int[] MATRIZ = new int[FIM];
    static int INICIO = 0;
    static Scanner scanner = new Scanner(System.in);

    public static boolean Vazia() {
        if (INICIO == 0)
            return true;
        else
            return false;
    }

    public static boolean Cheia() {
        if (INICIO == FIM)
            return true;
        else
            return false;
    }

    public static boolean Adicionar(int ELEMENTO) {
        if (Cheia())
            return false;
        else {
            MATRIZ[INICIO] = ELEMENTO;
            INICIO++;
            return true;
        }
    }

    public static boolean Retirar(int[] ELEMENTO) {
        int I;
        if (Vazia())
            return false;
        else {
            ELEMENTO[0] = MATRIZ[0];
            for (I = 0; I < INICIO - 1; I++)
                MATRIZ[I] = MATRIZ[I + 1];
            --INICIO;
            return true;
        }
    }

    public static void Entrada() {
        out.print("Entre com um elemento numerico: ");
        int X = scanner.nextInt();
        out.println();
        if (Adicionar(X))
            out.println("Elemento " + X + " inserido na posicao " + INICIO);
        else
            out.println("Impossivel adicionar " + X + " - fila lotada.");
        out.println();
    }

    public static void Saida() {
        int[] ELEMENTO = new int[1];
        if (Retirar(ELEMENTO)) {
            out.print("Elemento " + ELEMENTO[0]);
            out.println(" retirado do inicio da fila.");
        } else
            out.println("Impossivel retirar elemento - fila vazia.");
        out.println();
    }

    public static void Atual() {
        if (Vazia())
            out.println("Impossivel apresentar - fila vazia.");
        else
            out.println(MATRIZ[0] + " - primeiro elemento da fila.");
        out.println();
    }

    public static void Exibicao() {
        if (Vazia())
            out.println("Impossivel apresentar - fila vazia.");
        else {
            for (int I = 0; I < INICIO; I++)
                out.printf("Posicao: %2d = %d%n", I + 1, MATRIZ[I]);
        }
        out.println();
    }

    public static void Criar() {
        INICIO = 0;
        for (int i = 0; i < MATRIZ.length; i++)
            MATRIZ[i] = 0;
    }

    public static void main(String[] args) {
        Criar();
        int OPCAO = 0;
        while (OPCAO != 6) {
            out.println("PROGRAMA: FILA\n");
            out.println("[1] - Entrada");
            out.println("[2] - Saida");
            out.println("[3] - Apresentar 1o. da fila");
            out.println("[4] - Apresentar a fila");
            out.println("[5] - Nova fila");
            out.println("[6] - Sair\n");
            out.print("Escolha uma opcao: ");
            OPCAO = scanner.nextInt();
            out.println();
            if (OPCAO != 6) {
                switch (OPCAO) {
                    case 1:
                        Entrada();
                        break;
                    case 2:
                        Saida();
                        break;
                    case 3:
                        Atual();
                        break;
                    case 4:
                        Exibicao();
                        break;
                    case 5:
                        Criar();
                        break;
                    default:
                        out.println("Opcao invalida. Tente novamente.\n");
                        break;
                }
            }
        }
    }
}
