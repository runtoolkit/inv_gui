# inv_gui

**inv_gui**, Minecraft Java Edition için envanter tabanlı GUI menülerini kolayca oluşturmanızı sağlayan bir mcfunction kütüphanesidir. [Sketch](https://github.com/rarula/Sketch) projesinin tam yeniden adlandırılmış ve yeniden yapılandırılmış çatalıdır.

> Geliştirici: [runtoolkit](https://github.com/runtoolkit)  
> Sürüm: **1.0.0**  
> Minecraft: **1.20.2 – 1.20.4** (`pack_format 26`)  
> Lisans: CC0-1.0  
> Not: **1.21 desteği sonraki commit'lerde overlay sistemi ile eklenecektir.**

---

## Özellikler

- Chest Minecart veya Ender Chest üzerinde 27 yuvalık menü oluşturma
- Buton, normal öğe ve değişken öğe türleri
- Tıklama & bırakma olayı algılama
- Callback sistemi (listener tabanlı)
- `set_menu` ile çalışan menüyü anında değiştirme
- `util/map` ve `util/array` yardımcı modülleri

---

## Bağımlılıklar

Bu datapack'in çalışması için şunlar da yüklenmiş olmalıdır:

| Datapack | Lisans | Bağlantı |
|---|---|---|
| Oh! My Dat! | MIT | [Ai-Akaishi/OhMyDat](https://github.com/Ai-Akaishi/OhMyDat) |
| Close Detector | MIT | [Ai-Akaishi/CloseDetector](https://github.com/Ai-Akaishi/CloseDetector) |
| Player Item Tuner | MIT | [Ai-Akaishi/PlayerItemTuner](https://github.com/Ai-Akaishi/PlayerItemTuner) |

---

## Kurulum

```mcfunction
function inv_gui:api/setup
```

Detaylı kurulum için: [docs/kurulum.md](docs/kurulum.md)

---

## Hızlı Başlangıç

```mcfunction
item replace block 10000 0 10000 container.0 with minecraft:gray_stained_glass_pane
data modify storage inv_gui: in.key set value "f"
function inv_gui:api/register_item/button

item replace block 10000 0 10000 container.0 with minecraft:gold_block
data modify storage inv_gui: in.key set value "G"
data modify storage inv_gui: in.listener set value "altin_ver"
function inv_gui:api/register_item/button

data modify storage inv_gui: in.contents append value [f, f, f, f, f, f, f, f, f]
data modify storage inv_gui: in.contents append value [f, -, -, -, G, -, -, -, f]
data modify storage inv_gui: in.contents append value [f, f, f, f, f, f, f, f, f]

data modify storage inv_gui: in.id set value "ana_menu"
function inv_gui:api/build/auto
```

Tüm API belgesi için: [docs/api.md](docs/api.md)

---

## Storage Yapısı

```
inv_gui:          Ana giriş/çıkış deposu
  in.key          Kaydedilecek öğenin anahtarı
  in.listener     Tıklama listener adı  
  in.contents     Menü düzeni (3 satır x 9 sütun)
  in.id           Menü kimliği
  callback.*      Tıklama sonrası geri dönüş verisi

inv_gui:core      Dahili kalıcı veri
inv_gui:temp      Geçici işlem verisi
inv_gui:util      Yardımcı modül verisi
```

---

## Scoreboard'lar

| Objective | Tür | Açıklama |
|---|---|---|
| `InvGui` | dummy | Genel durum skoru |
| `InvGui.Id` | dummy | Minecart menü kimliği |
| `InvGui.Drop` | dummy | Bırakma tespiti |

---

## Sürüm Geçmişi

Bakınız: [CHANGELOG.md](CHANGELOG.md)
