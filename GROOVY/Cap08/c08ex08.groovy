// c08ex08.groovy

public class Main {
    final static int FIM = 10;
    static int[] MATRIZ = new int[FIM];
    static int INICIO = 0;

    public static boolean Vazia() {
        if (INICIO == 0) {
            return true;
        } else {
            return false;
        }
    }

    public static boolean Cheia() {
        if (INICIO == FIM) {
            return true;
        } else {
            return false;
        }
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
        Scanner scanner = new Scanner(System.in);
        int X;
        print("Entre com um elemento numerico: ");
        X = scanner.nextInt();
        println();
        if (Adicionar(X))
            println("Elemento " + X + " inserido na posicao " + INICIO);
        else
            println("Impossivel adicionar " + X + " - fila lotada.");
        println();
    }

    public static void Saida() {
        int[] ELEMENTO = new int[1];
        if (Retirar(ELEMENTO)) {
            print("Elemento " + ELEMENTO[0]);
            println(" retirado do inicio da fila.");
        } else
            println("Impossivel retirar elemento - fila vazia.");
        println();
    }

    public static void Atual() {
        if (!(Vazia()))
            println(MATRIZ[0] + " - primeiro elemento da fila.");
        else
            println("Impossivel apresentar - fila vazia.");
        println();
    }

    public static void Exibicao() {
        if (!(Vazia()))
            for (int I = 0; I < INICIO; I++)
                printf("Posicao: %2d = %d%n", I + 1, MATRIZ[I]);
        else
            println("Impossivel apresentar - fila vazia.");
        println();
    }

    public static void Criar() {
        INICIO = 0;
        for (int i = 0; i < MATRIZ.length; i++)
            MATRIZ[i] = 0;
    }

    public static void main(String[] args) {
        Criar();
        int OPCAO = 0;
        Scanner scanner = new Scanner(System.in);
        while (OPCAO != 6) {
            println("PROGRAMA: FILA\n");
            println("[1] - Entrada");
            println("[2] - Saida");
            println("[3] - Apresentar 1o. da fila");
            println("[4] - Apresentar a fila");
            println("[5] - Nova fila");
            println("[6] - Sair\n");
            print("Escolha uma opcao: ");
            OPCAO = scanner.nextInt();
            println();
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
                        println("Opcao invalida. Tente novamente.\n");
                        break;
                }
            }
        }
    }
}
