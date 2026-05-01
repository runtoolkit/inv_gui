# Değişiklik Geçmişi — inv_gui

## [1.0.0] — İlk Sürüm

### Eklenenler
- `inv_gui` namespace ile tam Sketch temelli envanter GUI sistemi
- Türkçe dokümantasyon (`README.md`, `docs/`)
- Detaylı Türkçe yorum satırları (tüm `.mcfunction` dosyaları)
- `pack.mcmeta` sürüm aralığı: 1.20.2–1.20.4 (`pack_format 22–26`)

### Değiştirilenler
- Namespace: `sketch` → `inv_gui`
- Scoreboard'lar: `Sketch` / `Sketch.Id` / `Sketch.Drop` → `InvGui` / `InvGui.Id` / `InvGui.Drop`
- Entity etiketleri: `Sketch.*` → `InvGui.*`
- Storage: `sketch:` / `sketch:core` / `sketch:temp` / `sketch:util` → `inv_gui:*`
- Konteyner kilidi: `Lock:"Sketch"` → `Lock:"InvGui"`
- Dizinler: `sketch_player/` → `gui_player/`, `sketch_target/` → `gui_target/`
- Migration sistemi kaldırıldı (v1.0.0 fresh start)

### Gelecek
- `[ ]` 1.21 overlay desteği (`pack_format 48+`)
- `[ ]` Harici bağımlılıkların (OhMyDat, CloseDetector, PlayerItemTuner) dahili implementasyonla değiştirilmesi
