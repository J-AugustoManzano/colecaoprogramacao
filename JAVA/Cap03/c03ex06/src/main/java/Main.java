// Projeto: c03ex06

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        String palavra = "COMPUTADOR";
        int tamanho = palavra.length();
        String copias = palavra + palavra + palavra;
        StringBuilder reverso = new StringBuilder(palavra).reverse();
        String novaPalavra = palavra.substring(0, 6) + "O" + 
            palavra.substring(7);

        Scanner entrada = new Scanner(System.in);

        out.println("Palavra ........: " + palavra);
        out.println();
        out.println("Lado esquerdo ..: " + palavra.substring(0, 3));
        out.println("Centro .........: " + palavra.substring(3, 7));
        out.print("Lado direito ...: ");
        out.println(palavra.substring(tamanho - 3));
        out.println("Reverso ........: " + reverso.toString());
        out.println("Copias .........: " + copias);
        out.println("Tira pedaco ....: " + palavra.substring(0, 7));
        out.println("Nova palavra ...: " + novaPalavra);

        out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
  }
}
