/* www.cagatayuresin.com
 * Pozitif bir tamsayının kalansız bölünebildiği
 * pozitif tamsayıları tespit eden program. */

#include <stdio.h>
// standart input-output (standart giriş-çıkış)
// kütüphanesini çağırdık.

// "bolenler" isimli fonksiyonu tanımladık
int bolenler(int sayi){
int x = 1, p = 0;
// x değişkeni sayıdan küçük olduğu sürece..
while(x <= sayi){
    // % ile mod aldık.
    if(sayi % x == 0){
        printf("%d  ", x); p++;
        // bölen her sayıdan sonra p ++
        // ile bölen sayısını hesapladık
        } x++;
    } if(p<=2){printf("\nASAL SAYI!");}
printf("\n%d böleni var...\n\n",p);
return 0;
}

// "islem" isimli fonksiyonu tanımladık
int islem(){
    int sayi;
    printf(">> Bölenlerine ayrılacak sayı: "); scanf("%d", &sayi);
    printf("\n>>>>> Bölenler: \n");
    bolenler(sayi); // bolenler isimli fonksiyona yönlendirdik. 
    islem(); // islem isimli fonksiyona yonlendirdik.
    return 0;
}

// ana fonksiyon
int main(){
    printf("www.cagatayuresin.com\n\nBÖLENLERE AYIRMA PROGRAMI\n\n\n");
    islem(); // islem isimli fonksiyona yonledirdik.
    return 0;
}