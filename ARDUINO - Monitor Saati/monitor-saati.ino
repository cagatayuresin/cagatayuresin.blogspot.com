/* 
www.cagatayuresin.com
Arduino Projeleri-1
Basit Saat Uygulaması
*/
void setup(){
  // Protokolü 115200bps(bit per second) ile başlatıyorum
  Serial.begin(115200);}
void loop(){
  // Uygulamanın başlamak üzere olduğunu haber ediyorum
  Serial.println("CAGATAY URESIN");
  Serial.println("www.cagatayuresin.com");
  Serial.println("Saat baslatilmak uzere...\n\n");
  // 5ten 1000ms(1sn) aralıklarla geri sayacak
  for (int k = 5; k >= 0; k--){Serial.print(k); delay(1000);}
  // Saat için 0dan 23e kadar sayacak döngüyü başlatıyorum
  for (int saat = 0; saat < 24; saat++){
    // Dakika için 0dan 59a kadar sayacak döngüyü başlatıyorum
    for (int dakika = 0; dakika < 60; dakika++){
      // Saniye için 0dan 59a kadar sayacak döngüyü başlatıyorum
      for (int saniye = 0; saniye < 60; saniye++){
        // Döngülerdeki değişkenleri her işlem için
        // tek tek göstermesini istiyorum
        Serial.print("Saat: ");
        Serial.print(saat);
        Serial.print(":"); 
        Serial.print(dakika);
        Serial.print(":"); 
        Serial.println(saniye);
        delay(1000); // 1000ms(1sn) bekletiyorum
      }}}}  