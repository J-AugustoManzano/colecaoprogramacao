// c08ex07.groovy

class Main {
    private static final int LIMITE = 10
    private static int[] MATRIZ = new int[LIMITE]
    private static int TOPO = 0

    static boolean Vazia() {
        if (TOPO == 0) {
            return true;
        } else {
            return false;
        }
    }

    static boolean Cheia() {
        if (TOPO == LIMITE) {
            return true;
        } else {
            return false;
        }
    }

    static boolean Adicionar(int elemento) {
        if (Cheia()) {
            return false
        } else {
            MATRIZ[TOPO] = elemento
            TOPO++
            return true
        }
    }

    static boolean Retirar(int[] elemento) {
        if (Vazia()) {
            return false
        } else {
            TOPO--
            elemento[0] = MATRIZ[TOPO]
            MATRIZ[TOPO] = 0
            return true
        }
    }

    static void Empilhar() {
        Scanner scanner = new Scanner(System.in)
        print "Entre com um elemento numerico: "
        int x = scanner.nextInt()
        println()
        if (Adicionar(x)) {
            println "Elemento $x inserido na posicao $TOPO"
        } else {
            println "Impossível adicionar $x - pilha cheia."
        }
        println()
    }

    static void Desempilhar() {
        int[] ELEMENTO = new int[1];
        if (Retirar(ELEMENTO)) {
            print("Elemento " + ELEMENTO[0]);
            println(" retirado do topo da pilha.");
        } else
            println("Impossivel retirar - pilha vazia.");
        println();
    }

    static void Mostrar() {
        if (!(Vazia())) {
            for (int i = TOPO - 1; i >= 0; i--) {
                printf "Posicao: %2d = %d\n", i + 1, MATRIZ[i]
            }
        } else {
            println "Impossivel apresentar - pilha vazia."
        }
        println()
    }

    static void Criar() {
        TOPO = 0
        for (int i = 0; i <= LIMITE - 1; i++) {
            MATRIZ[i] = 0
        }
    }

    static void main(String[] args) {
        Criar()
        int opcao = 0
        Scanner scanner = new Scanner(System.in)
        while (opcao != 5) {
            println "PROGRAMA: PILHA\n"
            println "[1] - Empilhar"
            println "[2] - Desempilhar"
            println "[3] - Mostrar"
            println "[4] - Criar pilha"
            println "[5] - Sair\n"
            print "Escolha uma opcao: "
            opcao = scanner.nextInt()
            println()
            if (opcao != 5) {
                switch (opcao) {
                    case 1:
                        Empilhar()
                        break
                    case 2:
                        Desempilhar()
                        break
                    case 3:
                        Mostrar()
                        break
                    case 4:
                        Criar()
                        break
                    default:
                        println "Opcao invalida. Tente novamente.\n"
                        break
                }
            }
        }
    }
}
