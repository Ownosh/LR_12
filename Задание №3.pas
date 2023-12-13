program z3;
var
  S: string;
  FileName: string;
  textfile: Text;
begin
  Write('Введите строку S: ');
  Readln(S);
  FileName := 'z3.txt';
  try
    Assign(textfile, FileName);
    Append(textfile);
    Writeln(textfile, S);
    Close(textfile);
    writeln('Строка успешно добавлена в конец файла.');
  except
    end;
end.
