#> inv_gui:core/load
#
# Datapack yüklendiğinde çalışır (sunucu başlangıcı / /reload).
# Scoreboard ve storage yapısını başlatır; mevcut veriler silinmez.
#
# @within tag/function minecraft:load

# -- Scoreboard kurulumu --
# Objective zaten mevcutsa "add" komutu sessizce başarısız olur; mevcut puanlar korunur.
    scoreboard objectives add InvGui dummy
    scoreboard objectives add InvGui.Id dummy
    scoreboard objectives add InvGui.Drop minecraft.used:minecraft.carrot_on_a_stick

# -- Sürüm henüz tanımlı değilse v1.0.0 olarak ayarla --
    execute unless data storage inv_gui: Version run data modify storage inv_gui: Version set value "1.0.0"

# -- Yükleme bildirimi --
# Tüm oyunculara gönderilir; op filtresi Java Edition vanilla'da selector ile yapılamaz.
    tellraw @a ["",{"text":"[","color":"dark_aqua"},{"text":"inv_gui","color":"aqua","bold":true},{"text":"] ","color":"dark_aqua"},{"text":"v1.0.0 yüklendi.","color":"white"}]
