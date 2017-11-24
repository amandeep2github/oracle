set serveroutput on;

declare
--declare variables, functions, cursors, packages that can used in body
  digit number(10) := 0;
cursor OneToTen is
  select * from table(sys.odcinumberlist(1,2,3,4,5,6,7,8,9,10));

cursor AToE is
  select * from table(sys.odcivarchar2list('A','B','C','D','E'));
begin
--write processing logic
  For num in OneToTen
  LOOP
    --digit := num;
    dbms_output.put_line('number');  
  END LOOP;

  For alpha in AToE
  LOOP
    --digit := num;
    dbms_output.put_line('alpha');  
  END LOOP;
end;