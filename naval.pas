program naval;

uses crt;
type tableau_naval=array[1..10,1..10] of integer;
var map:tableau_naval;
i,j,horizon,vertical:integer;
BEGIN
clrscr;

for i:=2 to 10 do
        for j:=2 to 10 do
        begin
                gotoxy(i*2,j);
                map[i,j]:=0;
                write(map[i,j]);
        end;
for i:=1 to 9 do
        begin
                gotoxy(i*2,1);
                map[i+1,1]:=i;
                write(map[i,1]);
                gotoxy(1,i);
                map[1,i+1]:=i;
                write(map[1,i]);
        end;

        begin
                readln('BATTLESHIPS');
        end;

        begin
        writeln ('Veuillez definir la position horizontal');
        readln (horizon);
        writeln ('Maintenant le verticale');
        readln (vertical);
        end;

        begin
        IF horizon = 8 and vertical = 3 THEN
                writeln('Vous avez toucher un porte avion');
        ELSE
                writeln('Rater...');
        end;

        begin
        IF horizon = 3 and vertical = 5 THEN
                writeln('Vous avez toucher un sous-marin');
        ELSE
                writeln('Rater...');
        end;

        begin
        IF horizon = 5 and vertical = 1 THEN
                writeln('Vous avez toucher un torpilleur');
        ELSE
                writeln('Rater...');
        end;

        begin
        IF horizon = 1 and vertical = 7 THEN
                writeln('Vous avez toucher un croisseur');
        ELSE
                writeln('Rater...');
        end;
readln;
END.

