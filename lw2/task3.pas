PROGRAM Hello(INPUT, OUTPUT);
USES
  DOS;
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
    BEGIN
      Find := POS('&', St1);
      WRITE('Hello dear, ');
      IF Find = 0
      THEN
        WRITELN(COPY(St1, 6, LENGTH(St1)-5))
      ELSE
        WRITELN(COPY(St1, 6, Find - 6))
    END
END.
