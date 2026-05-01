#> inv_gui:datadeclare
# @private
# This file documents the full public API surface.
# Developer tooling (e.g. mc-build, sandstone) uses this file as a reference.

#>
# @public
    #alias vector InvGui 10000 0 10000

#>
# @public
    #declare storage inv_gui:data

#>
# @public — Player and target tags
    #declare tag InvGui.Target
    #declare tag InvGui.Player

#>
# @public — Item modifiers
    #declare item_modifier inv_gui:dataregister_item/normal
    #declare item_modifier inv_gui:dataregister_item/button

#>
# @public — Event hooks
    #declare tag/function inv_gui:datahandler/on_open/chest_minecart
    #declare tag/function inv_gui:datahandler/on_open/ender_chest
    #declare tag/function inv_gui:datahandler/on_close/chest_minecart
    #declare tag/function inv_gui:datahandler/on_close/ender_chest
    #declare tag/function inv_gui:datahandler/on_select/chest_minecart
    #declare tag/function inv_gui:datahandler/on_select/ender_chest
    #declare tag/function inv_gui:dataset_menu/chest_minecart
    #declare tag/function inv_gui:dataset_menu/ender_chest
    #declare tag/function inv_gui:dataset_variable/chest_minecart
    #declare tag/function inv_gui:dataset_variable/ender_chest


# Item registry container — local storage
    #alias vector LocalContainer 10000 1 10000

# Menu build container
    #alias vector MenuContainer 10000 2 10000


# Primary data storage — persistent data (current menu ID, player state)
    #declare storage inv_gui:datacore

# Temporary operation storage
    #declare storage inv_gui:datatemp
    #declare storage inv_gui:datatemp/build
    #declare storage inv_gui:datatemp/set_menu

# Helper function storage
    #declare storage inv_gui:datautil
    #declare storage inv_gui:datautil/temp


# Scoreboard'lar
    #declare objective InvGui       "Genel durum skoru (tıklama, açılma vs.)"
    #declare objective InvGui.Id    "Minecart menü kimliği indeksi"
    #declare objective InvGui.Drop  "Öğe bırakma tespiti için geçici skor"

# Constant value holders
    #declare score_holder $LocalItemSlotIndex
    #declare score_holder $MinecartIndex
    #declare score_holder $65536


# Registered entity tag
    #declare tag InvGui.Entity

# Entity filter tags (0-0 .. 15-1)
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
    #declare advancement inv_gui:dataon_container_open

# Item modifier
    #declare item_modifier inv_gui:dataset_listener

# Item tag
    #declare tag/item inv_gui:dataall


# Dependencies — External libraries
    #declare storage oh_my_dat:
    #declare tag/function oh_my_dat:please

    #declare predicate open:chest_minecart
    #declare predicate open:ender_chest
