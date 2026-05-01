#> inv_gui:datacore/common/api/build/create_menu/set_item/item_type/variable/ender_chest
# @within function inv_gui:datacore/common/api/build/create_menu/set_item/item_type/variable/_

## Assign InvGui.Player tag
    tag @s add InvGui.Player


# Callback: dispatch event to listener.
    execute at @s run function #inv_gui:dataset_variable/ender_chest


## Remove InvGui.Player tag
    function inv_gui:datacore/common/gui_player/reset
