mesaj=get(handles.edit1,'String');
% girdiye yazılmış olan mesajın sözcük
% özelliğini mesaj değişkenine aktar.
n=length(mesaj);
% mesaj değişkeninin uzunluğunu
% n değişkenine aktar
if get(handles.popupmenu1,'Value') == 2
% açılır listede şifreleme işaretliyse
for i = 1:n
% i değişkenini 1'den n'ye kadar saydır.
    if mod(i,3) == 0
% i değişkeninin 3' bölümünden kalan 0 ise
        mesaj(i)=mesaj(i)+3;
% mesajın i. harfini 3 ileri at   
    elseif mod(i,3) == 1
% i değişkeninin 3' bölümünden kalan 1 ise
        mesaj(i)=mesaj(i)+4;
% mesajın i. harfini 4 ileri at 
    else
% i değişkeninin 3' bölümünden kalan 2 ise
        mesaj(i)=mesaj(i)+5;
% mesajın i. harfini 5 ileri at 
    end
% şartı sonlandır.
end
% döngüyü sonlandır.
set(handles.edit2,'String',mesaj);
% yeni mesajı çıktıya aktar.
elseif get(handles.popupmenu1,'Value') == 3
% açılır listede çözümleme işaretliyse
for i = 1:n
% i değişkenini 1'den n'ye kadar saydır.
    if mod(i,3) == 0
% i değişkeninin 3' bölümünden kalan 0 ise
        mesaj(i)=mesaj(i)-3;
% mesajın i. harfini 3 geri çek 
    elseif mod(i,3) == 1
% i değişkeninin 3' bölümünden kalan 1 ise  
        mesaj(i)=mesaj(i)-4;
% mesajın i. harfini 4 geri çek
    else
% i değişkeninin 3' bölümünden kalan 2 ise
        mesaj(i)=mesaj(i)-5;
% mesajın i. harfini 5 geri çek
    end
% şartı sonlandır.
end
% döngüyü sonlandır.
set(handles.edit2,'String',mesaj);
% yeni mesajı çıktıya aktar.
else
% açılır pencerede bir şey seçilmmişse
    set(handles.edit2,'String','Bir seçim yapınız.');
% çıktıya uyarıyı yazdır.
end
% şartı sonlandır.