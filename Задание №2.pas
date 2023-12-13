program z2;
var
  N, K, i, j: Integer;
  OutputFile: TextFile;
begin
  Write('Введите количество строк N: ');
  Readln(N);
  Write('Введите количество символов в каждой строке K: ');
  Readln(K);
  if (N <= 0) or (K <= 0) then
  begin
    Writeln('Пожалуйста, введите положительные значения для N и K.');
    Halt;
  end;
  AssignFile(OutputFile, 'z2.txt');
  Rewrite(OutputFile);
  for i := 1 to N do
  begin
    for j := 1 to K do
    begin
      Write(OutputFile, '*');
    end;
    Writeln(OutputFile); 
  end;
  CloseFile(OutputFile);
end.
