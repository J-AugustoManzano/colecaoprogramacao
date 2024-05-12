<?php
// c02ex05.php

printf("Entre seu nome: ");
$nome = trim(fgets(STDIN));

printf("Ola, %s! Bem-vindo ao estudo de PHP.\n", $nome);

printf("\n");
printf("Tecle <Enter> para encerrar... ");
trim(fgets(STDIN));

?>
