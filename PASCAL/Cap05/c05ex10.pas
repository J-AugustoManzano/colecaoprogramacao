program c05ex10;

label 
  loop, endloop;
  
var
  RESP: String;
  N, R: Integer;

begin
  RESP := 'S';
  loop:
    Write('Entre um valor numerico: ');
    ReadLn(N);

    R := N * 3;

    WriteLn('Resultado = ', R);
    WriteLn;

    Write('Deseja continuar? (S/N): ');
    ReadLn(RESP);

    WriteLn;    
    if (UpCase(RESP) <> 'S') then goto endloop;

    goto loop;
  endloop:

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
