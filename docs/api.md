# API Referansı — inv_gui

## Genel Bakış

inv_gui iki ana akış üzerine inşaadır:

1. **Register → Build** — Öğeleri kaydet, menüyü oluştur
2. **Callback** — Oyuncu tıkladığında listener tetiklenir

---

## `inv_gui:api/setup`

Boyutu hazırlar. Forceload ve konteyner kurulumunu yapar.

```mcfunction
function inv_gui:api/setup
```

Sadece bir kez (her boyut için) çalıştırılmalıdır.

---

## `inv_gui:api/register_item/button`

Bir öğeyi **tıklanabilir buton** olarak kaydeder.

**Girdi:**
| Konum | Alan | Açıklama |
|---|---|---|
| `10000 0 10000 container.0` | — | Kaydedilecek öğe |
| `inv_gui: in.key` | string | Öğenin kısa anahtarı (örn. `"G"`) |
| `inv_gui: in.listener` | string? | Tıklandığında tetiklenecek listener adı (opsiyonel) |
| `inv_gui: in.isGlobal` | boolean? | Tüm boyutlardan erişilebilir olup olmayacağı (varsayılan: `false`) |

```mcfunction
item replace block 10000 0 10000 container.0 with minecraft:diamond
data modify storage inv_gui: in.key set value "D"
data modify storage inv_gui: in.listener set value "elmas_ver"
function inv_gui:api/register_item/button
```

---

## `inv_gui:api/register_item/normal`

Bir öğeyi **pasif (tıklanamaz)** olarak kaydeder.

Girdi formatı `button` ile aynıdır; `in.listener` alanı kullanılmaz.

---

## `inv_gui:api/register_item/variable`

Bir öğeyi **değişken** olarak kaydeder. Oyuncu envanterinden alınan öğe bu yuvaya yerleştirilir.

---

## `inv_gui:api/build/auto`

Mevcut oyuncunun açık olduğu konteynere menüyü inşa eder.  
Açık konteyner tipi otomatik olarak algılanır (Chest Minecart veya Ender Chest).

**Girdi:**
| Alan | Açıklama |
|---|---|
| `inv_gui: in.id` | Menünün benzersiz kimliği |
| `inv_gui: in.contents` | `(string[] @ 9)[] @ 3` — 3 satır x 9 sütun düzeni |

```mcfunction
data modify storage inv_gui: in.contents append value [f, f, f, f, f, f, f, f, f]
data modify storage inv_gui: in.contents append value [f, -, -, -, G, -, -, -, f]
data modify storage inv_gui: in.contents append value [f, f, f, f, f, f, f, f, f]
data modify storage inv_gui: in.id set value "ana_menu"
function inv_gui:api/build/auto
```

**Layout sembolleri:**
- `-` → Boş yuva
- Diğer her string → Daha önce kayıtlı öğenin anahtarıyla eşleşir

---

## `inv_gui:api/build/chest_minecart`

Doğrudan Chest Minecart'a menü inşa eder.

---

## `inv_gui:api/build/ender_chest`

Doğrudan Ender Chest'e menü inşa eder.

---

## `inv_gui:api/set_menu`

Oyuncunun açık olduğu menüyü belirtilen kimlikle değiştirir.

```mcfunction
data modify storage inv_gui: in.id set value "ayarlar_menu"
function inv_gui:api/set_menu
```

---

## `inv_gui:api/unregister_item`

Daha önce kaydedilmiş bir öğeyi kayıt listesinden çıkarır.

---

## Callback Sistemi

Oyuncu bir butona tıkladığında, `inv_gui: callback` storage'ına şu veriler yazılır:

```
inv_gui: callback
  .id            → Menü kimliği
  .listener      → Tıklanan öğenin listener adı
  .selectedItem  → Tıklanan öğe (item NBT)
  .selectionType → "CLICK" veya "DROP"
  .otherItems    → Menüdeki diğer öğeler (mevcut durum)
```

Listener dosyanızda bu veriye göre işlem yapın:

```mcfunction
#> menim:ana_menu/listener

# "elmas_ver" listener'ı tetiklendiyse elmas ver
execute if data storage inv_gui: callback{listener:"elmas_ver"} run give @s minecraft:diamond 1

# Menüyü değiştirmek istiyorsanız (callback içinde Build API kullanabilirsiniz)
execute if data storage inv_gui: callback{listener:"ayarlar"} run function menim:ayarlar_menu/
```

---

## Olay Kancaları (Event Hooks)

Aşağıdaki function tag'larına kendi fonksiyonlarınızı ekleyerek olayları dinleyebilirsiniz:

| Tag | Olay |
|---|---|
| `#inv_gui:handler/on_open/chest_minecart` | Chest Minecart açıldığında |
| `#inv_gui:handler/on_open/ender_chest` | Ender Chest açıldığında |
| `#inv_gui:handler/on_close/chest_minecart` | Chest Minecart kapandığında |
| `#inv_gui:handler/on_close/ender_chest` | Ender Chest kapandığında |
| `#inv_gui:handler/on_select/chest_minecart` | Chest Minecart'ta öğe seçildiğinde |
| `#inv_gui:handler/on_select/ender_chest` | Ender Chest'te öğe seçildiğinde |
