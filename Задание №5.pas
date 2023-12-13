program z5;

var
  inputFile, outputFile: TextFile;
  num, min, max: Integer;

begin

  AssignFile(inputFile, 'input.txt');
  Reset(inputFile);

  min := MaxInt; 
  max := -MaxInt; 

  while not EOF(inputFile) do 
  begin
    ReadLn(inputFile, num); // eof - конец файла
    if num < min then 
      min := num;
    if num > max then
      max := num;
  end;

  CloseFile(inputFile);
  AssignFile(outputFile, 'output.txt');
  Rewrite(outputFile);
  WriteLn(outputFile, 'Минимальное число: ', min);
  WriteLn(outputFile, 'Максимальное число: ', max);
  CloseFile(outputFile);
end.


