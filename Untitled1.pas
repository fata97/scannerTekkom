program Untitled;
uses crt;
var

prg_sumber,f_hasil,ftext:text;
karakter:Char;
kata,Nm_token,data:string;

procedure bacafile; { prosedur membaca file sumber }
begin
read(prg_sumber,karakter);
end;

procedure hasil; {prosedur utk menulis hasil setiap token}
begin
append(f_hasil); {menambah hasil scan ke file hasil}
writeln(f_hasil, kata : 15, ' : ', Nm_token);
writeln(kata : 15, ' : ', Nm_token); {mencetak hasil scan ke layar}
end;


procedure periksa; {prosedur memeriksa setiap karakter file sumber}
begin
while not eof(prg_sumber) do {kerjakan sampai akhir file}
begin
bacafile;

if karakter = '{' then {mengabaikan/membuang komentar}
begin
repeat
begin
bacafile;
end;
until karakter = '}';
kata:='';
end;

if karakter = char(39) then {mengecek tanda petik (`)}
begin
repeat
begin
kata := kata + karakter;
bacafile;
end;
until karakter = char(39) ;
kata := kata + karakter;
Nm_token := 'Konstanta';
hasil;
kata :='';
end;

if (karakter in['A'..'Z','a'..'z','_']) then {mengecek karakter/kata}
begin

repeat
begin
kata := kata + karakter;
bacafile;
end;
until (not(karakter in['A'..'Z','a'..'z','_']));
Nm_token:='Identifier / Variabel';



assign(ftext,'D:/kuliah/tekkom/progaramcuy/keyword.txt');
reset(ftext);
while not eof(ftext) do {mencocokkan dgn tabel keyword}
begin
readln(ftext,data);
if kata=data then Nm_token:='Identifier / Keyword';
end;
close(ftext);


hasil;
kata :='';
end;




if (karakter in['0'..'9']) then {mengecek angka}
begin
repeat
begin
kata := kata + karakter;
bacafile;
end;
until (not(karakter in['0'..'9']));
Nm_token := 'Konstanta / Integer';
hasil;
kata :='';
end;

if (karakter in['+','-','*','/','^']) then
begin
repeat
begin
kata := kata+karakter;
bacafile;
end;
until (not(karakter in['+','-','*','/','^']));
Nm_token :='Operator';

hasil;
kata:='';
end;

if (karakter in['(',')','[',']','^',':',';',',','?']) then
begin
kata:=karakter;
Nm_token :='Delimiter';
hasil;
kata:='';
end;
end;

end;



begin //MenuUtama
assign(prg_sumber,'D:/kuliah/tekkom/progaramcuy/Untitled2.pas');
reset(prg_sumber); (*buka file untuk dibaca*)
//readln(prg_sumber, Nm_token); (*baca string dari file*)
assign(f_hasil,'D:/kuliah/tekkom/progaramcuy/hasil.txt'); {menetapkan file hasil}
rewrite(f_hasil); {menghapus isi file hasil}
periksa; {menjalankan prosedur scan}
close(prg_sumber);
close(f_hasil);
readln;
end.
