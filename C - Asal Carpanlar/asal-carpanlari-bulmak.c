/* www.cagatayuresin.com
 * Kullanıcıdan istenen sayıyı
 * Asal çarpanlarına ayıran program
 */

#include <stdio.h>

int fonk(int sayi){
int x, p, t;
    for(x = 2; x <= sayi; x++){
        t = 0;
        if(sayi % x == 0){
            for(p = 1; p <= x; p++){
            if(x % p == 0){t++;}
            }
            if(t <= 2){
                printf(" %d ",x);
            }
        }
    }
    return 0;
}

int main(){
    int sayi;
    
    printf("\n>>> Sayı: "); scanf("%d",&sayi);
    if(sayi > 2){
    fonk(sayi);
    }
    else{
        printf("\nDoğru düzgün bir sayı giriniz...\n");
    }
    main();
    return 0;
}