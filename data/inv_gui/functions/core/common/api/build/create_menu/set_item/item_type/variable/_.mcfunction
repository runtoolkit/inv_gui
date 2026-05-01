#> inv_gui:datacore/common/api/build/create_menu/set_item/item_type/variable/_
#
# @callbackInput
#   storage inv_gui:data in
#       listener?: any
#
# @within function inv_gui:datacore/common/api/build/create_menu/set_item/_

## Back up in storage
    data modify storage inv_gui:datatemp/build in set from storage inv_gui:data in
    data remove storage inv_gui:data in


# Callback: dispatch event to listener. (return Set value)
    data modify storage inv_gui:data callback.id set from storage inv_gui:datatemp/build in.id
    data modify storage inv_gui:data callback.key set from storage inv_gui:datatemp Content
    data modify storage inv_gui:data callback.slot set from storage inv_gui:datatemp Slot

# Callback: dispatch event to listener.
    execute if entity @s[type=minecraft:chest_minecart] run function inv_gui:datacore/common/api/build/create_menu/set_item/item_type/variable/chest_minecart
    execute if entity @s[type=minecraft:player] run function inv_gui:datacore/common/api/build/create_menu/set_item/item_type/variable/ender_chest

# Clean up temporary data.
    data remove storage inv_gui:data callback


# Set listener on the retrieved item
    item modify block 10000 0 10000 container.0 inv_gui:dataset_listener

# Clean up temporary data.
    data remove storage inv_gui:data in


# Place the retrieved item
    data modify storage inv_gui:datatemp TargetSlot set from storage inv_gui:datatemp Slot
    function inv_gui:datacore/common/api/build/place_item/_


## Restore in storage
    data modify storage inv_gui:data in set from storage inv_gui:datatemp/build in
    data remove storage inv_gui:datatemp/build in
