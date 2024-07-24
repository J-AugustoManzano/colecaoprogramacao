// Projeto: c06ex03

import java.util.Scanner;
import static java.lang.System.out;

public class Main {
    public static void main(String[] args) {
        Aluno[] ALUNO = new Aluno[8];
        int I, J;
        Scanner scanner = new Scanner(System.in);

        out.println("Escola de Computacao XPTO");
        out.println("Cadastro Escolar de Aluno");
        out.println();

        for (I = 0; I <= 7; ++I) {
            out.println("Aluno: " + (I + 1));
            out.println();

            ALUNO[I] = new Aluno();

            out.print("Nome ..............: ");
            ALUNO[I].Nome = scanner.nextLine();

            out.print("Turma .............: ");
            ALUNO[I].Turma = scanner.nextLine().charAt(0);

            out.print("Sala ..............: ");
            ALUNO[I].Sala = Integer.parseInt(scanner.nextLine());

            out.println();

            for (J = 0; J <= 3; ++J) {
                out.print("Entre a " + (J + 1) + "a. nota ..: ");
                ALUNO[I].Notas[J] = Float.parseFloat(scanner.nextLine());
            }

            out.println();
        }

        out.println("Escola de Computacao XPTO");
        out.println("Cadastro Escolar de Aluno");
        out.println();
        out.println("DADOS DOS ALUNOS");

        out.print("Aluno ");
        out.print("Nome                           ");
        out.print("Sala ");
        out.print("Turma ");
        out.print("Nota1 ");
        out.print("Nota2 ");
        out.print("Nota3 ");
        out.println("Nota4");

        out.print("----- ");
        out.print("------------------------------ ");
        out.print("---- ");
        out.print("----- ");
        out.print("----- ");
        out.print("----- ");
        out.print("----- ");
        out.println("-----");

        for (I = 0; I <= 7; ++I) {
            out.printf("%5d ", I + 1);
            out.printf("%-30s ", ALUNO[I].Nome);
            out.printf("%4d ", ALUNO[I].Sala);
            out.printf("%5c ", ALUNO[I].Turma);
            for (J = 0; J <= 3; ++J)
                out.printf("%5.1f ", ALUNO[I].Notas[J]);
            out.println();
        }

        out.println();
        out.print("Tecle <Enter> para encerrar... ");
        scanner.nextLine();
    }

    public static class Aluno {
        public String Nome;
        public char Turma;
        public int Sala;
        public float[] Notas = new float[4];
    }
}