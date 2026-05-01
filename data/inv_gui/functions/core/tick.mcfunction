#> inv_gui:core/tick
#
# Her oyun tikinde çalışır (20 kez/saniye).
# Tıklama ve bırakma olaylarını algılar.
#
# @within tag/function minecraft:tick

# Öğe tıklamasını kontrol et: her oyuncu için tıklama emitter'ını çalıştır
    execute as @a run function inv_gui:core/emitter/check_item_click/_

# Öğe bırakma olayını kontrol et: bırakma skoru olan oyuncular yakınında düşen eşya varsa tetikle
    execute if entity @a[scores={InvGui.Drop=1..}, limit=1] as @a[scores={InvGui.Drop=1..}] at @s if entity @e[type=minecraft:item, distance=..5.0, limit=1] run function inv_gui:core/emitter/check_item_drop/_

# Bırakma skorunu sıfırla (bir sonraki tike hazırla)
    scoreboard players reset @a[scores={InvGui.Drop=-2147483648..2147483647}] InvGui.Drop
