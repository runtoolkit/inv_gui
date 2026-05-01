#> inv_gui:core/common/api/build/create_menu/set_item/item_type/variable/ender_chest
# @within function inv_gui:core/common/api/build/create_menu/set_item/item_type/variable/_

## Set Inv GUI.Player
    tag @s add Inv GUI.Player


# Callback
    execute at @s run function #inv_gui:set_variable/ender_chest


## Remove Inv GUI.Player
    function inv_gui:core/common/inv_gui_player/reset
