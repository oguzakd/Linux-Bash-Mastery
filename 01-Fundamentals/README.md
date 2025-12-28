# 📚 Linux & Bash Scripting: Temel Kavramlar ve Uygulamalar

Bu klasör, Linux ekosisteminin kalbi olan **Bash (Bourne-again shell)** üzerine temelden ileri seviyeye ders notlarını ve uygulama örneklerini içerir.

---

## 🛠 Bash Nedir?
Bash, terminale yazdığımız komutları yorumlayarak işletim sistemi çekirdeğine ileten bir **Komut Yorumlayıcısıdır (Shell)**. 

> **Not:** Sisteminizde hangi shell'in aktif olduğunu öğrenmek için: `echo $SHELL`

## 📝 Scripting Temelleri

### Shebang (#!) Kullanımı
Bir Bash scriptinin en önemli satırı ilk satırdır. İşletim sistemine bu dosyanın hangi yorumlayıcı ile çalışacağını söyler:
- `#!/bin/bash` -> Standart Bash kullanımı
- `#!/bin/sh` -> POSIX uyumlu kabuk kullanımı

### Dosya İzinleri
Yazdığınız bir scripti çalıştırmak için önce **çalıştırma yetkisi** vermelisiniz:
```bash
chmod +x script_adi.sh
./script_adi.sh
```

## 🧱 Değişkeler ve Veri Tipleri

Bash'te değişken tanımlarken = işaretinin yanında boşluk bırakılmaz.

```bash
ADI="Oğuzhan"          # Değişken tanımlama
echo $ADI              # Değişkeni çağırma
readonly SABIT="123"   # Değiştirilemez değişken
unset ADI              # Değişkeni silme
```

### Diziler (Arrays)
```bash
KISILER=("Yusuf" "Ramazan" "Sinan")
echo ${KISILER[0]}      # İlk eleman
echo ${#KISILER[@]}     # Eleman sayısı
```

## 🎮 Kontrol Yapıları

### Koşullu İfadeler (If/Else)
Aritmetik karşılaştırmalarda özel flag'ler kullanılır:

- eq: Eşit (==)

- ne: Eşit değil (!=)

- gt: Büyük (>)

- lt: Küçük (<)

```bash
if [ $A -gt $B ]; then
    echo "A büyüktür B"
else
    echo "Eşit veya küçük"
fi
```

### Case Yapısı (Switch-Case)
Çoklu seçim işlemlerinde daha okunaklı bir yapı sunar:

```bash
case $GUN in
    1) echo "Pazartesi" ;;
    7) echo "Pazar" ;;
    *) echo "Geçersiz Gün" ;;
esac
```

### Döngüler (Loops)
For Döngüsü
```bash
for i in {1..5}; do
    echo "Sayı: $i"
done
```
While & Until
While: Şart doğru olduğu sürece çalışır.

Until: Şart yanlış olduğu sürece (şart sağlanana kadar) çalışır.

## 🏗 Fonksiyonlar

Kodun tekrar kullanılabilirliğini sağlar. Fonksiyon içinde tanımlanan değişkenlerin globali etkilememesi için local anahtar kelimesi kullanılmalıdır.
```bash
merhaba_de() {
    local ISIM=$1
    echo "Merhaba $ISIM"
}

merhaba_de "Oğuzhan"
```

## 🚀 Pratik Kullanıcı Etkileşimi

Kullanıcıdan veri almak için read komutu kullanılır:
```bash
read -p "Adınızı giriniz: " ADI
read -sp "Şifreniz: " SIFRE
```

Bu notlar öğrenim sürecimdeki projelerin temelini oluşturmaktadır. Uygulamalı projeler için bir üst dizindeki 02-Projects klasörüne göz atabilirsiniz.
