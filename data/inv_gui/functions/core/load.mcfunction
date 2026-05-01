#> inv_gui:core/load
#
# Datapack yüklendiğinde çalışır (sunucu başlangıcı / /reload).
# Scoreboard ve storage yapısını başlatır; mevcut veriler silinmez.
#
# @within tag/function minecraft:load

# Sürüm henüz tanımlı değilse v1.0.0 olarak ayarla
    execute unless data storage inv_gui: Version run data modify storage inv_gui: Version set value "1.0.0"

# Sürüm doğrulama: konsolda bildirim göster
    tellraw @a[permission=op] {"text":"[inv_gui] Sürüm: 1.0.0 yüklendi.","color":"aqua"}
