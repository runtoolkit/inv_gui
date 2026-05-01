#> inv_gui:core/common/api/build/create_menu/set_item/item_type/variable/ender_chest
# @within function inv_gui:core/common/api/build/create_menu/set_item/item_type/variable/_

## InvGui.Player を設定
    tag @s add InvGui.Player


# Callback: olayı dinleyiciye ilet.
    execute at @s run function #inv_gui:set_variable/ender_chest


## InvGui.Player を削除
    function inv_gui:core/common/gui_player/reset
