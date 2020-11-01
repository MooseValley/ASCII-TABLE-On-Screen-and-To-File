program ASCII_TABLE_On_Screen;
{$APPTYPE CONSOLE}
uses
  SysUtils;

Var
   k : Integer;
begin
     WriteLn ('Moose`s ASCII Table on Screen - v0.2');

     For k := 0 TO 255 do
     begin
          If (k < 10) then
             Write ('  ')
          Else If (k < 100) then
             Write (' ');

          If (k = 0) then
             Write (IntToStr (k) + '. Null ')
          Else If (k = 7) then
             Write (IntToStr (k) + '. Bell ')
          Else If (k = 8) then
             Write (IntToStr (k) + '. BKSpc')
          Else If (k = 9) then
             Write (IntToStr (k) + '. HTAB ')
          Else If (k = 10) then
             Write (IntToStr (k) + '. LF   ')
          Else If (k = 13) then
             Write (IntToStr (k) + '. CR   ')
          Else
             Write (IntToStr (k) + '. ' + Char(k) + '    ');

          If ((k + 1) MOD 7 = 0) AND (k > 0) then
             WriteLn;
     end;
     WriteLn;
     Write ('>>> Press the [Enter] key to exit <<<');
     ReadLn;
end.
