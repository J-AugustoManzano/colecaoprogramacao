# c03ex07.raku 

my $Frase = "Aprendendo Raku com o Professor Manzano";

say "Frase ......: $Frase";
say "              " ~ ("-" x 39);
say "              000000000111111111122222222223333333333";
say "              012345678901234567890123456789012345678";

say "\n";
say "Tamanho ....: {chars $Frase} caracteres";

my @Palavras = $Frase.split(/\s+/);

say "\n";
say "Palavra 1 .............: {@Palavras[0]}";
say "Palavra 2 .............: {@Palavras[1]}";
say "Palavra 3 .............: {@Palavras[2]}";
say "Palavra 4 .............: {@Palavras[3]}";

say "\n";
say "Letra 1 da Palavra 1 ..: {substr(@Palavras[0], 0, 1)}";
say "Letra 2 da Palavra 1 ..: {substr(@Palavras[0], 1, 1)}";
say "Letra 3 da Palavra 1 ..: {substr(@Palavras[0], 2, 1)}";
say "Letra 4 da Palavra 1 ..: {substr(@Palavras[0], 3, 1)}";

say "\n";
say "A palavra 'Raku' na posição: {index($Frase, 'Raku') + 1}";

say "\n";
say "Tecle <Enter> para encerrar... ";
prompt();
