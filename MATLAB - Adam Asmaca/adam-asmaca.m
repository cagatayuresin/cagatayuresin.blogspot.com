% Adam asmaca
clear all; clc;
fprintf('Adam Asmaca ya Hoşgeldiniz.\n');
sozcuk=input('Lütfen sormak istediğiniz kelimeyi giriniz: ','s');
sozcuk=upper(sozcuk);
hak=input('Kaç yanlış hakkı verilecek?: ');
puan=input('Birim puan kaç olsun?: ');
clc; fprintf('Oyun başladı. Hakkınız: %0.0f\n',hak);
n=length(sozcuk);
kelime=sozcuk;
for i = 1:n
 kelime(i)='-';
end
fprintf('\n\t%s\n',kelime);
for k = 1:29
 t=0;
 harf=input('\nLutfen bir harf tahmin ediniz: ','s');
 harf=upper(harf);
 for m = 1:n
  if (harf == sozcuk(m))
   kelime(m)=harf; t=5;
  end
 end
 if (t==5)
    hak=hak;
 else
    hak=hak-1;
 end
 fprintf('\n\t%s Kalan Hakkınız: %0.0f\n',kelime,hak);
 if (sozcuk == kelime)
  sonuc=puan*hak;
  fprintf('\nKAZANDINIZ!! Puanınız: %0.0f',sonuc);
  break
 elseif (hak <= 0)
  fprintf('\nKAYBETTİNİZ!! Puanınız: 0');
  break
 end
end