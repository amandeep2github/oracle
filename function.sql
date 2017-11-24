set serveroutput on;

declare
--declare variables, functions, cursors, packages that can used in body
function sayHelloTo(personName in varchar2) return varchar is
begin
  return 'Hello ' || personName;
end;

begin
--write processing logic
dbms_output.put_line(sayHelloTo('Amandeep'));
end;