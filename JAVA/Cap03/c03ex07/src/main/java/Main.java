// Projeto: c03ex07

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        String frase = "Aprendendo Java com o Professor Manzano";
        String[] palavras = frase.split(" ");
        String busca = "Java";
        int pos;

        out.println("Frase ......: " + frase);
        out.println("              ---------------------------------------");
        out.println("              000000000111111111122222222223333333333");
        out.println("              012345678901234567890123456789012345678");
        out.println();

        out.println("Tamanho ....: " + frase.length() + " caracteres");
        out.println();

        for (int i = 0; i <= 3; i++) {
            out.printf("Palavra %d .............: %s%n", i + 1, palavras[i]);
        }
        out.println();

        out.println("Letra 1 da Palavra 1 ..: " + palavras[0].charAt(0));
        out.println("Letra 2 da Palavra 1 ..: " + palavras[0].charAt(1));
        out.println("Letra 3 da Palavra 1 ..: " + palavras[0].charAt(2));
        out.println("Letra 4 da Palavra 1 ..: " + palavras[0].charAt(3));
        out.println();

        pos = frase.indexOf(busca) + 1;
        out.println("A palavra 'Java' na posicao: " + pos);

        out.print("\nTecle <Enter> para encerrar... ");
        Scanner entrada = new Scanner(System.in);
        entrada.nextLine();
    }
}
