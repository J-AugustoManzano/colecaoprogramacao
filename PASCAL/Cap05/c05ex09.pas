program c05ex09;

label 
  loop, endloop;
  
var
  I, N, R: Integer;

begin
  I := 1;
  loop:
    Write('Entre um valor numerico: ');
    ReadLn(N);

    R := N * 3;

    WriteLn('Resultado = ', R);
    WriteLn;

    if (I > 4) then goto endloop;

    I := I + 1;
    goto loop;
  endloop:

  WriteLn;
  Write('Tecle <Enter> para encerrar... ');
  ReadLn;
end.
