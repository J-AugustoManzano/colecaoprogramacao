// Projeto: c08ex07

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    final static int LIMITE = 10;
    static int[] MATRIZ = new int[LIMITE];
    static int TOPO = 0;

    public static boolean Vazia() {
        if (TOPO == 0) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean Cheia() {
        if (TOPO == LIMITE) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean Adicionar(int ELEMENTO) {
        if (Cheia()) {
            out.println("Impossivel adicionar - pilha cheia.");
            return false;
        } else {
            MATRIZ[TOPO] = ELEMENTO;
            TOPO++;
            return true;
        }
    }

    public static boolean Retirar(int[] ELEMENTO) {
        if (Vazia()) {
            out.println("Impossivel retirar - pilha vazia.");
            ELEMENTO[0] = -1;
            return false;
        } else {
            TOPO--;
            ELEMENTO[0] = MATRIZ[TOPO];
            MATRIZ[TOPO] = 0;
            return true;
        }
    }

    public static void Empilhar() {
        Scanner scanner = new Scanner(System.in);
        int X;
        out.print("Entre com um elemento numerico: ");
        X = scanner.nextInt();
        out.println();
        if (Adicionar(X))
            out.println("Elemento " + X + " inserido na posicao " + TOPO);
        out.println();
    }

    public static void Desempilhar() {
        int[] ELEMENTO = new int[1];
        if (Retirar(ELEMENTO)) {
            out.print("Elemento " + ELEMENTO[0]);
            out.println(" retirado do topo da pilha.");
        }
        out.println();
    }

    public static void Mostrar() {
      if (Vazia())
          out.println("Impossivel apresentar - pilha vazia.");
      else
          for (int I = TOPO - 1; I >= 0; I--)
              out.printf("Posicao: %2d = %d%n", I + 1, MATRIZ[I]);
      out.println();
  }

    public static void Criar() {
        TOPO = 0;
        for (int i = 0; i <= LIMITE - 1; i++) {
            MATRIZ[i] = 0;
        }
    }

    public static void main(String[] args) {
        Criar();
        int Opcao = 0;
        Scanner scanner = new Scanner(System.in);
        while (Opcao != 5) {
            out.println("PROGRAMA: PILHA\n");
            out.println("[1] - Empilhar");
            out.println("[2] - Desempilhar");
            out.println("[3] - Mostrar");
            out.println("[4] - Criar pilha");
            out.println("[5] - Sair\n");
            out.print("Escolha uma opcao: ");
            Opcao = scanner.nextInt();
            out.println();
            if (Opcao != 5)
                switch (Opcao) {
                    case 1:
                        Empilhar();
                        break;
                    case 2:
                        Desempilhar();
                        break;
                    case 3:
                        Mostrar();
                        break;
                    case 4:
                        Criar();
                        break;
                    default:
                        out.println("Opcao invalida. Tente novamente.\n");
                        break;
                }
        }
    }
}
