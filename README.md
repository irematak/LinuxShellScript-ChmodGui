# LinuxShellScript-ChmodGui

Linux bash script dili ile chmod komutu için bir gui yapılmıştır. Görsel arayüz olarak ZENITY Kütüphanesi kullanılmıştır.    
Programın YouTube videosu ile açıklanmış hali [linktedir](https://pages.github.com/)..   

## Chmod Komutu Nedir ?   

`chmod` komutu, Unix benzeri işletim sistemlerinde dosya veya dizinlerin izinlerini değiştirmeye yarayan bir komuttur.   
Bu komut, dosya veya dizinin okuma, yazma ve çalıştırma izinlerini değiştirebilir ve bunların kimler tarafından kullanılabileceğini belirleyebilir.   

Genel kullanım şekli şu şekildedir:    

```
chmod [izinler] [dosya veya dizin]
```

`chmod` komutunun "izinler" parametresi, dosya veya dizinin izinlerinin nasıl değiştirileceğini belirtir. Bu parametre, kısaltmalar veya sayısal kodlar kullanılarak yazılabilir.   

Örneğin:    
```
chmod u=rwx,g=rw,o=r dosya
```

Bu kod parçacığında, "dosya" adlı dosya için özel kullanıcının (u) okuma, yazma ve çalıştırma izinlerine (rwx), ait olduğu grup kullanıcılarının (g) okuma ve yazma izinlerine (rw), diğer kullanıcıların (o) sadece okuma izinine (r) sahip olmaları belirtilmiştir.       

`chmod` komutunun "dosya veya dizin" parametresi ise, izinlerinin değiştirileceği dosya veya dizinin adını belirtir.    

Örneğin:    
```
chmod u=rwx,g=rw,o=r dosya1 dosya2 dizin
```
Bu kod parçacığında, "dosya1" ve "dosya2" adlı dosyalar ve "dizin" adlı dizin için aynı izinler verilmiştir.   

`chmod` komutunun "izinler" parametresi, dosya veya dizinlerin izinlerini değiştirmeye yarayan bir parametredir. Bu parametre, kısaltmalar veya sayısal kodlar kullanılarak yazılabilir.    

`chmod` komutunun "izinler" parametresinin kısaltmalar kullanılarak yazılış şekilleri şunlardır:   

- "u" parametresi: Özel kullanıcının izinlerini belirtir. Örneğin, "u=rwx" şeklinde yazılırsa, özel kullanıcının okuma (r), yazma (w) ve çalıştırma (x) izinlerine sahip olacağı anlamına gelir.  
  
- "g" parametresi: Ait olduğu grup kullanıcılarının izinlerini belirtir. Örneğin, "g=rw" şeklinde yazılırsa, ait olduğu grup kullanıcılarının okuma (r) ve yazma (w) izinlerine sahip olacağı anlamına gelir.    
- "o" parametresi: Diğer kullanıcıların izinlerini belirtir. Örneğin, "o=r" şeklinde yazılırsa, diğer kullanıcıların sadece okuma (r) izinine sahip olacağı anlamına gelir.   

`chmod` komutunun "izinler" parametresinin sayısal kodlar kullanılarak yazılış şekilleri şunlardır:  

- 4: Okuma izni verir. Örneğin, "4" şeklinde yazılırsa, sadece okuma izni verilir.   
- 2: Yazma izni verir. Örneğin, "2" şeklinde yazılırsa, sadece yazma izni verilir.   
- 1: Çalıştırma izni verir. Örneğin, "1" şeklinde yazılırsa, sadece çalıştırma izni verilir.   

Örnekler:   

- chmod u+x dosya1: Dosya1 dosyasına özel kullanıcının çalıştırma izni verilir.
- chmod u=rw dosya2: Dosya2 dosyasına özel kullanıcının sadece okuma ve yazma izinlerine sahip olması sağlanır.  
- chmod g-w dosya3: Dosya3 dosyasından ait olduğu grup kullanıcılarının yazma izni kaldırılır.
- chmod o=r dosya4: Dosya4 dosyasına diğer kullanıcıların sadece okuma izni verilir.
- chmod 754 dosya5: Dosya5 dosyasına özel kullanıcının çalıştırma, okuma ve yazma izinlerine, ait olduğu grup kullanıcılarının sadece okuma iznine ve diğer kullanıcıların sadece okuma iznine sahip olması sağlanır.



