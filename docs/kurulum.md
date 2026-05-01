# Kurulum Kılavuzu — inv_gui

## Gereksinimler

- Minecraft Java Edition 1.20.2 – 1.20.4
- Aşağıdaki datapacks (kurulum sırasına göre):
  1. [Oh! My Dat!](https://github.com/Ai-Akaishi/OhMyDat)
  2. [Close Detector](https://github.com/Ai-Akaishi/CloseDetector)
  3. [Player Item Tuner](https://github.com/Ai-Akaishi/PlayerItemTuner)
  4. **inv_gui** (bu paket)

## Adımlar

### 1. Datapacks Klasörüne Kopyalama

```
world/
  datapacks/
    OhMyDat/
    CloseDetector/
    PlayerItemTuner/
    inv_gui/          ← bu repo
```

### 2. Oyunu Yükle / Reload

```mcfunction
/reload
```

### 3. Kurulum Fonksiyonunu Çalıştır

Her boyut için ayrı ayrı çalıştırın:

```mcfunction
/function inv_gui:api/setup
```

### 4. Doğrulama

```mcfunction
/data get storage inv_gui: Version
```

Çıktı `"1.0.0"` olmalıdır.

---

## Koordinat Kısıtlaması

`10000 0–2 10000` koordinatlarında her zaman üç şülker kutusu bulunmalıdır. Bu koordinatları başka amaçlarla kullanmayın.

---

## Sıfırlama

Kurulum verilerini sıfırlamak için:

```mcfunction
scoreboard objectives remove InvGui
scoreboard objectives remove InvGui.Id
scoreboard objectives remove InvGui.Drop
data remove storage inv_gui: Version
setblock 10000 0 10000 minecraft:air
setblock 10000 1 10000 minecraft:air
setblock 10000 2 10000 minecraft:air
```
