// Projeto: c03ex01

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        int A, B, X;
        Scanner entrada = new Scanner(System.in);

        System.out.print("Entre o 1o. valor numerico inteiro: ");
        A = entrada.nextInt();
        entrada.nextLine();

        System.out.print("Entre o 2o. valor numerico inteiro: ");
        B = entrada.nextInt();
        entrada.nextLine();

        X = A + B;

        System.out.println("Resultado = " + X);

        System.out.print("\nTecle <Enter> para encerrar... ");
        entrada.nextLine();
    }
}
