PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES
  DOS;
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  N1, N2: INTEGER;
  S1: STRING;
BEGIN
  S1 := GetEnv('QUERY_STRING');
  N1 := POS(Key + '=', S1);
  IF N1 = 0
  THEN
    WRITELN('Введите ключ правильно, не забудьте знак ''='' ')
  ELSE
    BEGIN
      N1 := N1 + Length(Key) + 1;
      N2 := N1;
      WHILE S1[N2] <> '&'
      DO
        N2 := N2 + 1;
      GetQueryStringParameter := COPY(S1, N1, N2 - N1)
    END   
END;         
BEGIN {WorkWithQueryString}
  WRITELN('Content-Type: text/plain');
  WRITELN();
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {WorkWithQueryString}

