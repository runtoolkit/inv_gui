# Katkıda Bulunma Rehberi — inv_gui

Katkıda bulunmak istediğiniz için teşekkürler! Aşağıdaki adımları takip ederek süreci kolaylaştırabilirsiniz.

---

## İçindekiler

- [Hata Bildirimi](#hata-bildirimi)
- [Özellik İsteği](#özellik-isteği)
- [Kod Katkısı](#kod-katkısı)
- [Commit Mesajı Kuralları](#commit-mesajı-kuralları)
- [Stil Rehberi](#stil-rehberi)

---

## Hata Bildirimi

Bir hata bulduysanız lütfen şunları sağlayın:

1. **inv_gui sürümü** (`/data get storage inv_gui: Version` çıktısı)
2. **Minecraft sürümü**
3. **Hatayı tekrarlamak için adımlar**
4. **Beklenen davranış** — ne olmasını bekliyordunuz?
5. **Gerçekleşen davranış** — ne oldu?
6. **`/datapack list` çıktısı** — hangi datapacks yüklü?

[Yeni hata bildirimi oluştur →](.github/ISSUE_TEMPLATE/bug_report.md)

---

## Özellik İsteği

Yeni bir özellik önermek için önce mevcut issue'ları kontrol edin.
Benzer bir istek yoksa yeni bir issue açın ve şunları açıklayın:

- Hangi sorunu çözüyor?
- Nasıl çalışması gerekiyor?
- Mevcut API ile nasıl entegre olacak?

---

## Kod Katkısı

### 1. Fork ve Clone

```bash
git clone https://github.com/KULLANICI_ADINIZ/inv_gui.git
cd inv_gui
```

### 2. Branch Oluştur

```bash
git checkout -b feat/yeni-ozellik
# veya
git checkout -b fix/hata-aciklamasi
```

### 3. Değişiklik Yap

- `data/inv_gui/functions/` altındaki `.mcfunction` dosyalarını düzenleyin
- Her fonksiyona Türkçe yorum satırı ekleyin
- `declare.mcfunction`'ı güncelleyin (yeni public API varsa)

### 4. Test Et

Değişikliklerinizi test etmek için:

```mcfunction
/reload
/data get storage inv_gui: Version
```

### 5. Pull Request Aç

- PR başlığı commit kurallarına uygun olsun
- Ne değiştirdiğinizi ve neden değiştirdiğinizi açıklayın
- İlgili issue'u bağlayın (varsa): `Closes #42`

---

## Commit Mesajı Kuralları

[Conventional Commits](https://www.conventionalcommits.org/tr/) formatını kullanıyoruz:

```
<tür>: <kısa açıklama>

[opsiyonel gövde]
```

**Türler:**

| Tür | Açıklama |
|---|---|
| `feat` | Yeni özellik |
| `fix` | Hata düzeltmesi |
| `docs` | Sadece dokümantasyon |
| `refactor` | Ne hata düzeltmesi ne de yeni özellik |
| `perf` | Performans iyileştirmesi |
| `chore` | Build sistemi, bağımlılık güncellemesi |

**Örnekler:**

```
feat: on_refresh event tag sistemi eklendi
fix: chest_minecart set_menu slot offset hatası düzeltildi
docs: api.md kayıt sistemi bölümü güncellendi
```

---

## Stil Rehberi

### .mcfunction Dosyaları

```mcfunction
#> inv_gui:modül/fonksiyon
#
# Fonksiyonun ne yaptığını açıklayan Türkçe yorum.
# Birden fazla satır kullanılabilir.
#
# @input
#   storage inv_gui: in
#       alan: tür — açıklama
#
# @within function inv_gui:üst_fonksiyon

# -- Bölüm başlığı --
    komut satırı
    komut satırı

# Geçici veriyi temizle.
    data remove storage inv_gui: in
```

**Kurallar:**
- 4 boşluklu girinti (tab değil)
- Her anlamlı blok öncesinde Türkçe yorum
- `# Geçici veriyi temizle.` kalıbını koruyun
- Boş satırlarla mantıksal blokları ayırın
