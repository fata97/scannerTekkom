program Untitled;
uses crt;

var
  ulang : char;
  menu : integer;
  volume,s,permukaan,p,l,t,s1,s2,s3,r : real;

begin

  repeat
    gotoxy(25,7);writeln('========================');
    gotoxy(25,8);writeln('MENU HITUNG BANGUN RUANG');
    gotoxy(25,9);writeln('========================');
    gotoxy(25,10);writeln('1. KUBUS');
    gotoxy(25,11);writeln('2. BALOK');
    gotoxy(25,12);writeln('3. PRISMA SEGITIGA');
    gotoxy(25,13);writeln('4. BOLA');
    gotoxy(25,14);writeln('========================');
    gotoxy(25,15);write('Pilih menu berapa? '); readln(menu);
    clrscr;

    if (menu = 1) then
    begin
      writeln('=================');
      writeln('MENU HITUNG KUBUS');
      writeln('=================');
      write('Masukkan sisi (satuan cm) : '); readln(s);
      volume := s*s*s;
      permukaan := 6*s*s;
      writeln('');writeln('');
      writeln('HASIL');
      writeln('-----');
      writeln('Volume Kubus         : ', volume :0:2,' cm^3');
      writeln('Luas Permukaan Kubus : ', permukaan :0:2,' cm^2');
      writeln('--------------------------');
    end
    else if (menu = 2) then
    begin
      writeln('=================');
      writeln('MENU HITUNG BALOK');
      writeln('=================');
      write('Masukkan panjang (satuan cm) : '); readln(p);
      write('Masukkan lebar (satuan cm)   : '); readln(l);
      write('Masukkan tinggi (satuan cm)  : '); readln(t);
      volume := p*l*t;
      permukaan := 2*(p*l+p*t+l*t);
      writeln('');writeln('');
      writeln('HASIL');
      writeln('-----');
      writeln('Volume Balok         : ', volume :0:2,' cm^3');
      writeln('Luas Permukaan Balok : ', permukaan :0:2,' cm^2');
      writeln('--------------------------');
    end
    else if (menu = 3) then
    begin
      writeln('===========================');
      writeln('MENU HITUNG PRISMA SEGITIGA');
      writeln('===========================');
      write('Masukkan sisi 1 alas (satuan cm)   : '); readln(s1);
      write('Masukkan sisi 2 alas (satuan cm)   : '); readln(s2);
      write('Masukkan sisi 3 alas (satuan cm)   : '); readln(s3);
      write('Masukkan tinggi prisma (satuan cm) : '); readln(t);
      volume := 0.5*s1*s2*t;
      permukaan := (2*s1*s2)+(s1*t+s2*t+s3*t);
      writeln('');writeln('');
      writeln('HASIL');
      writeln('-----');
      writeln('Volume Prisma Segitiga         : ', volume :0:2,' cm^3');
      writeln('Luas Permukaan Prisma Segitiga : ', permukaan :0:2,' cm^2');
      writeln('--------------------------');
    end
    else
    begin
      writeln('=================');
      writeln('MENU HITUNG BOLA');
      writeln('=================');
      write('Masukkan Jari-Jari (satuan cm) : '); readln(r);
      volume := (4/3)*pi*r*r*r;
      permukaan := 4*pi*r*r;
      writeln('');writeln('');
      writeln('HASIL');
      writeln('-----');
      writeln('Volume Bola         : ', volume :0:2,' cm^3');
      writeln('Luas Permukaan Bola : ', permukaan :0:2,' cm^2');
      writeln('--------------------------');
    end;

  writeln('');writeln('');
  write('Kembali ke menu awal (y/n)? '); readln(ulang);
  clrscr;
  until ulang = 'n';

readln;

end.
