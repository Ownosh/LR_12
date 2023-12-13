program z6;

var
  inputFile, outputFile: Text;
  line: string;
begin
  Assign(inputFile, '152.txt');
  Assign(outputFile, '153.txt');

  Reset(inputFile);
  Rewrite(outputFile);

  while not Eof(inputFile) do
  begin
    ReadLn(inputFile, line);
    if line <> '' then
      WriteLn(outputFile, line);
  end;

  Close(inputFile);
  Close(outputFile);
end.
