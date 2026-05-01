#> inv_gui:core/common/api/build/create_menu/set_item/item_type/variable/_
#
# @callbackInput
#   storage inv_gui: in
#       listener?: any
#
# @within function inv_gui:core/common/api/build/create_menu/set_item/_

## inを退避
    data modify storage inv_gui:temp/build in set from storage inv_gui: in
    data remove storage inv_gui: in


# Callback: olayı dinleyiciye ilet.の戻り値を設定
    data modify storage inv_gui: callback.id set from storage inv_gui:temp/build in.id
    data modify storage inv_gui: callback.key set from storage inv_gui:temp Content
    data modify storage inv_gui: callback.slot set from storage inv_gui:temp Slot

# Callback: olayı dinleyiciye ilet.
    execute if entity @s[type=minecraft:chest_minecart] run function inv_gui:core/common/api/build/create_menu/set_item/item_type/variable/chest_minecart
    execute if entity @s[type=minecraft:player] run function inv_gui:core/common/api/build/create_menu/set_item/item_type/variable/ender_chest

# Geçici veriyi temizle.
    data remove storage inv_gui: callback


# 取得したアイテムにlistenerを設定
    item modify block 10000 0 10000 container.0 inv_gui:set_listener

# Geçici veriyi temizle.
    data remove storage inv_gui: in


# 取得したアイテムを配置
    data modify storage inv_gui:temp TargetSlot set from storage inv_gui:temp Slot
    function inv_gui:core/common/api/build/place_item/_


## inを設定
    data modify storage inv_gui: in set from storage inv_gui:temp/build in
    data remove storage inv_gui:temp/build in
