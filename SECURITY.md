# Güvenlik Politikası — inv_gui

## Desteklenen Sürümler

| Sürüm | Destek Durumu |
|---|---|
| 1.0.x (güncel) | ✅ Güvenlik güncellemeleri alır |
| < 1.0.0 | ❌ Destek yok |

---

## Güvenlik Açığı Bildirimi

**Lütfen güvenlik açıklarını kamuya açık issue olarak bildirmeyin.**

Bir güvenlik açığı keşfettiyseniz aşağıdaki yöntemi kullanın:

1. GitHub'ın **[Private Security Advisories](https://github.com/runtoolkit/inv_gui/security/advisories/new)** özelliğini kullanın.
2. Raporunuzda şunları belirtin:
   - Açığın türü ve etkisi
   - Tekrarlamak için adımlar
   - Hangi inv_gui sürümünü etkiliyor

Raporunuzu **72 saat** içinde yanıtlamaya çalışırız.

---

## Datapack Güvenliği Hakkında

### Önemli Uyarılar

`inv_gui` bir sunucu tarafı datapack'tir. Aşağıdaki noktalara dikkat edin:

- **`inv_gui:api/setup` yalnızca operatörler tarafından çalıştırılmalıdır.**
  `forceload` ve `setblock` komutları içerir; oyuncular tarafından erişilebilir hale getirilmemelidir.

- **Listener fonksiyonları güven sınırlarını aşmamalıdır.**
  Callback'ler `@s` bağlamında çalışır. `@a` veya `@e` hedefleyen komutlar eklemeden önce dikkatli olun.

- **Storage verileri sunucu tarafında tutulur.**
  `inv_gui:` storage'ına güvenilmeyen kaynaklardan veri yazmayın.

- **`Lock:"InvGui"` konteynerleri oyuncular tarafından açılmamalıdır.**
  `10000 0-2 10000` koordinatlarını oyuncu erişimine kapatın.

### Mimari Sınırlamalar

Intent-tabanlı hata tespiti (yani bir komutun başarısız olup olmadığına bakarak güvenlik kararı vermek)
datapack mimarisinde güvenilir değildir. `inv_gui`, güvenlik kararlarını konfigürasyon düzeyinde alır;
çalışma zamanı hata tespitine dayanmaz.
