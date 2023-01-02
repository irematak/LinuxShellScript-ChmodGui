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

## Nasıl Geliştirildi?

> Bir Shell Script dosyasında geliştirilmiş bir uygulamadır. Shell Script dosyası oluşturmak için `nano file_name.sh` komutu ile Shell Script dosyanızı bir nano   editör ile oluşturup açıyoruz. Dosyanızın en başına `#!/bin/bash` yazınız. Dosyanızı `bash file_name.sh` komutuyla çalıştırabilirsiniz. Zenity kütüphaneleri Shell Scriptini etkileşimli halde ve daha anlaşılır şekilde kullanılmasına olanak sağlar. 

## Programın Özellikleri 

- İlk olarak terminalden `touch` komutu ile .txt uzantılı bir dosya oluşturulmaktadır. Bu dosyanın izinleri düzenlenecektir.   
- `ls -l` komutu ile  dosyanın izinleri görüntülenmektedir.   
- `nano file_name.sh` komutu ile shell script dosyası oluşturulup nano editöründe açılmaktadır.   

<img width="756" alt="1" src="https://user-images.githubusercontent.com/75726319/210249089-747a45ae-c457-49bd-88c1-0b1d59c75555.PNG">

- Aşağıdaki gibi görüntülenmektedir.   

<img width="756" alt="2" src="https://user-images.githubusercontent.com/75726319/210251889-6e6408e2-c753-495d-a02f-7579d107454f.PNG">

- `bash file_name.sh` komutu ile dosya çalıştırılmaktadır.   


<img width="756" alt="3" src="https://user-images.githubusercontent.com/75726319/210253483-f0205758-dbc9-4c28-8936-f1a9526b7427.PNG">

- Son komut da çalıştırıldıktan sonra aşağıdaki şekilde bir arayüz çıkmaktadır.   

<img width="756" alt="4" src="https://user-images.githubusercontent.com/75726319/210254017-b677d070-b29f-4917-ae71-ccc9819754c5.PNG">
 
- User Type alanına izni değiştirilmesi istenen kullanıcı tipi girilmelidir. Bu kullanıcılar : user, group, other şeklindedir.
- Add alanına eklenmesi istenen bir izin yazılmalıdır. İzinler : read, write, execute şeklindedir.   
- Remove alanına kaldırılması istenen bir izin yazılmalır. İzinler : read, write, execute şeklindedir.   
- File Name alanına bu işlemlerin yapılacağı bir dosya uzantısıyla birlikte (file_name.txt) girilmelir.   
- Ok tuşuna basıldıktan sonra bir uyarı penceresi gelmektedir.   

<img width="756" alt="5" src="https://user-images.githubusercontent.com/75726319/210255012-b26b9477-5a3d-4c72-8244-f4766da97549.PNG">   

- Bu uyarı pencerisinde girlien dosyanın son izin durumları görüntülenmektedir.

## Proje Detayları

> Shell scriptte Zenity aracı kullanılarak bir form oluşturulmuş ve formdan girilen veriler değişkenlere atanmıştır. Daha sonra, `chmod` komutu kullanılarak "fileName" değişkeninde belirtilen dosya veya dizinin izinleri if yapısıyla birlikte girilen verilere göre değiştirilmektedir. Zenity aracının "--warning" seçeneğini kullanılarak son izin durumu `ls -l $fileName | awk '{print $1}' ` komutuyla gösterilmektedir.










