// Projeto: c03ex05

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        String nome;

        Scanner entrada = new Scanner(System.in);

        out.print("Entre seu nome: ");
        nome = entrada.nextLine();

        out.println("Ola, " + nome + "! Bem-vindo ao estudo de Java.");

        System.out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}
