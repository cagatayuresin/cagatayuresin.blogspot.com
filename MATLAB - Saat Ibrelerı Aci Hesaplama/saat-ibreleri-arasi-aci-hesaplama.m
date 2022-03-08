a=str2num(get(handles.edit1,'String'));
y=str2num(get(handles.edit2,'String'));
s=str2num(get(handles.edit3,'String'));
% ay, y, s değişkenlerine zamanı ayrı ayrı aldım.
% ve stringten numaraya çevirdim.
sa=(s/60)*360;
% saniyenin 0 ile arasındaki açı
yay=((y/60)*360)+((s/60)*3);
% yelkovanın 0 ile arasındaki açı ile saniyenin ötelemesi
aayp=((a/12)*360)+((y/60)*15)+((s/60)*(1/4));
% akrebin 0 ile araındaki açı artı yelkovanın artı saniyenin ötelemesi
if sa < yay
% eğer yelkovan saniyeden ötedeyse
    fark1=yay-sa;
% yelkovanın açısından saniyeyi çıkar
elseif yay < sa
% eğer saniye yelkovandan ötedeyse
    fark1=sa-yay;
% saniyeden yelkovanı çıkar
else
% eşitlerse aralarında açı yoktur
    fark1=0;
end
% koşulu sonlandır
if aayp < yay
% eğer yelkovan akrepten ötedeyse
    fark2=yay-aayp;
% yelkovandan akrebi çıkar
elseif yay < aayp
% eğer akrep yelkovandan ötedeyse
    fark2=aayp-yay;
% yelkovanı akrepten çıkar
else
% üst üstelerse açı sıfırdır
    fark2=0;
end
% koşulu sonlandır
if aayp < sa
% eğer saniye akrepten ötedeyse
    fark3=sa-aayp;
% saniyeden akrebi çıkar
elseif sa < aayp
% eğer akrep saniyeden ötedeyse
    fark3=aayp-sa;
% akrepten saniyeyi çıkar
else
% üst üsteyse açı sıfırdır.
    fark3=0;
end
% koşulu sonlandır
x=num2str(fark2);
% numaraları stringe çevir ve değişkenlere ata.
p=num2str(fark3);
z=num2str(fark1);
set(handles.edit4,'String',x);
% her sonucu kutucuklara yerleştir.
set(handles.edit5,'String',p);
set(handles.edit6,'String',z);