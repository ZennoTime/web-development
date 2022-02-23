PROGRAM Hello(INPUT, OUTPUT);
USES
  dos;
VAR
  St1: STRING;
  Find: INTEGER;
BEGIN
  WRITELN('Content-Type: text/plain');
  WRITELN;
  St1 := GetEnv('QUERY_STRING');
  Find := Pos('name=', St1);
  IF Find = 0
  THEN
    WRITELN('Hello Anonymous!')
  ELSE
    WRITELN('Hello Dear, ', COPY(St1, 6, LENGTH(St1) - 5), '!')
END.
