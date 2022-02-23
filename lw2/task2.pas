PROGRAM WebSarahRevere(INPUT, OUTPUT);
USES
  Dos;
VAR
  S1: STRING;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  S1 := GetEnv('QUERY_STRING');
  IF S1 = 'lanterns=1'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF S1 = 'lanterns=2'
    THEN
      WRITELN('The British coming by sea.')
    ELSE
      WRITELN('Sarah didn''t say.')
END.