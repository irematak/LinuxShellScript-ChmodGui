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

"chmod" komutunun "izinler" parametresi, dosya veya dizinin izinlerinin nasıl değiştirileceğini belirtir. Bu parametre, kısaltmalar veya sayısal kodlar kullanılarak yazılabilir.   

Örneğin:    
```
chmod u=rwx,g=rw,o=r dosya
```

Bu kod parçacığında, "dosya" adlı dosya için özel kullanıcının (u) okuma, yazma ve çalıştırma izinlerine (rwx), ait olduğu grup kullanıcılarının (g) okuma ve yazma izinlerine (rw), diğer kullanıcıların (o) sadece okuma izinine (r) sahip olmaları belirtilmiştir.       

"chmod" komutunun "dosya veya dizin" parametresi ise, izinlerinin değiştirileceği dosya veya dizinin adını belirtir.    
Örneğin:    
```
chmod u=rwx,g=rw,o=r dosya1 dosya2 dizin
```
Bu kod parçacığında, "dosya1" ve "dosya2" adlı dosyalar ve "dizin" adlı dizin için aynı izinler verilmiştir.   


