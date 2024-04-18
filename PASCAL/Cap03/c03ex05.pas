program c03ex05;

var
  NOME: String;

begin
  Write('Entre seu nome: ');
  ReadLn(NOME);

  WriteLn('Ola, ', NOME, '! Bem-vindo ao estudo de Pascal.');
  
  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
