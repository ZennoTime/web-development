PROGRAM PrintEnviroment(INPUT, OUTPUT);
USES 
  DOS;
BEGIN {PrintEnviroment}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN(GetEnv('QUERY_STRING'), ' - QUERY_STRING');
  WRITELN(GetEnv('REQUEST_METHOD'), ' - REQUEST_METHOD');
  WRITELN(GetEnv('CONTENT_LENGTH'), ' - CONTENT_LENGTH');
  WRITELN(GetEnv('HTTP_USER_AGENT'), ' - HTTP_USER_AGENT');
  WRITELN(GetEnv('HTTP_HOST'), ' - HTTP_HOST')
END. {PrintEnviroment}       
