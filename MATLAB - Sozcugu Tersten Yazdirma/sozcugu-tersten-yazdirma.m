clear all; clc;
% Yukarıdaki kod satırında program yeniden başlatıldığında
% kayıtlı değişkenleri hafızadan siliyorum ve ekranı temizliyorum.
sozcuk=input('Lütfen sözcüğü giriniz: ','s');
% sozcuk isimli değişkene string formatında değer istiyorum.
n=length(sozcuk);
% n değişkenine sozcuk değişkenindeki değerin uzunluğunu aktarıyorum.
fprintf('\n');
% Birazdan gelecek sonuç için bir satır aşağı iniyorum.
for i = n:1:-1
% i değişkeninin n sayısından 1'e kadar her seferinde birer kez azalacak
% şekilde değer aldığı bir döngü açıyorum.
k=sozcuk(i);
% Sözcüğün i. harfini k değişkenine aktarıyorum.
fprintf('%c',k);
% k değişkenindeki harfi ekrana yazdırıyorum.
end
% for döngüsünü kapatıyorum.