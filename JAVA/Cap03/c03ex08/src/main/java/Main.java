// Projeto: c03ex08

/*
 Programa exemplo para operações de duas entradas
 com cálculo de adição e apresentação de resultado.
*/

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        int A, B, X;
        Scanner entrada = new Scanner(System.in);

        // Entrada de dados

        System.out.print("Entre o 1o. valor numerico inteiro: ");
        A = entrada.nextInt();
        entrada.nextLine();

        System.out.print("Entre o 2o. valor numerico inteiro: ");
        B = entrada.nextInt();
        entrada.nextLine();

        // Processamento de dados

        X = A + B; // Cálculo da adição

        // Saída de dados

        System.out.println("Resultado = " + X);

        System.out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}
