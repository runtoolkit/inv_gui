#> inv_gui:declare
# @private
# Bu dosya, tüm genel (public) API yüzeyini belgeler.
# Geliştirici araçları (örn. mc-build, sandstone) bu dosyayı referans alır.

#>
# @public
    #alias vector InvGui 10000 0 10000

#>
# @public
    #declare storage inv_gui:

#>
# @public — Oyuncu ve hedef etiketleri
    #declare tag InvGui.Target
    #declare tag InvGui.Player

#>
# @public — Öğe modifier'ları
    #declare item_modifier inv_gui:register_item/normal
    #declare item_modifier inv_gui:register_item/button

#>
# @public — Olay kancaları (event hooks)
    #declare tag/function inv_gui:handler/on_open/chest_minecart
    #declare tag/function inv_gui:handler/on_open/ender_chest
    #declare tag/function inv_gui:handler/on_close/chest_minecart
    #declare tag/function inv_gui:handler/on_close/ender_chest
    #declare tag/function inv_gui:handler/on_select/chest_minecart
    #declare tag/function inv_gui:handler/on_select/ender_chest
    #declare tag/function inv_gui:set_menu/chest_minecart
    #declare tag/function inv_gui:set_menu/ender_chest
    #declare tag/function inv_gui:set_variable/chest_minecart
    #declare tag/function inv_gui:set_variable/ender_chest


# Öğe kayıt konteyneri — yerel depo
    #alias vector LocalContainer 10000 1 10000

# Menü oluşturma konteyneri
    #alias vector MenuContainer 10000 2 10000


# Ana veri deposu — kalıcı veriler (mevcut menü kimliği, oyuncu durumu)
    #declare storage inv_gui:core

# Geçici işlem deposu
    #declare storage inv_gui:temp
    #declare storage inv_gui:temp/build
    #declare storage inv_gui:temp/set_menu

# Yardımcı fonksiyonlar için depo
    #declare storage inv_gui:util
    #declare storage inv_gui:util/temp


# Scoreboard'lar
    #declare objective InvGui       "Genel durum skoru (tıklama, açılma vs.)"
    #declare objective InvGui.Id    "Minecart menü kimliği indeksi"
    #declare objective InvGui.Drop  "Öğe bırakma tespiti için geçici skor"

# Sabit değer tutucular
    #declare score_holder $LocalItemSlotIndex
    #declare score_holder $MinecartIndex
    #declare score_holder $65536


# Kayıtlı entity etiketi
    #declare tag InvGui.Entity

# Entity filtreleme etiketleri (0-0 .. 15-1)
    #declare tag InvGui.Filter.0-0
    #declare tag InvGui.Filter.1-0
    #declare tag InvGui.Filter.2-0
    #declare tag InvGui.Filter.3-0
    #declare tag InvGui.Filter.4-0
    #declare tag InvGui.Filter.5-0
    #declare tag InvGui.Filter.6-0
    #declare tag InvGui.Filter.7-0
    #declare tag InvGui.Filter.8-0
    #declare tag InvGui.Filter.9-0
    #declare tag InvGui.Filter.10-0
    #declare tag InvGui.Filter.11-0
    #declare tag InvGui.Filter.12-0
    #declare tag InvGui.Filter.13-0
    #declare tag InvGui.Filter.14-0
    #declare tag InvGui.Filter.15-0
    #declare tag InvGui.Filter.0-1
    #declare tag InvGui.Filter.1-1
    #declare tag InvGui.Filter.2-1
    #declare tag InvGui.Filter.3-1
    #declare tag InvGui.Filter.4-1
    #declare tag InvGui.Filter.5-1
    #declare tag InvGui.Filter.6-1
    #declare tag InvGui.Filter.7-1
    #declare tag InvGui.Filter.8-1
    #declare tag InvGui.Filter.9-1
    #declare tag InvGui.Filter.10-1
    #declare tag InvGui.Filter.11-1
    #declare tag InvGui.Filter.12-1
    #declare tag InvGui.Filter.13-1
    #declare tag InvGui.Filter.14-1
    #declare tag InvGui.Filter.15-1


# Advancement
    #declare advancement inv_gui:on_container_open

# Item modifier
    #declare item_modifier inv_gui:set_listener

# Item tag
    #declare tag/item inv_gui:all


# Bağımlılıklar — Dış kütüphaneler
    #declare storage oh_my_dat:
    #declare tag/function oh_my_dat:please

    #declare predicate open:chest_minecart
    #declare predicate open:ender_chest
