#> inv_gui:core/common/api/build/create_menu/set_item/item_type/variable/chest_minecart
# @within function inv_gui:core/common/api/build/create_menu/set_item/item_type/variable/_

## Assign InvGui.Player tag
    function inv_gui:core/common/gui_player/set


# Callback: dispatch event to listener.
    execute at @s run function #inv_gui:dataset_variable/chest_minecart


## Remove InvGui.Player tag
    function inv_gui:core/common/gui_player/reset
