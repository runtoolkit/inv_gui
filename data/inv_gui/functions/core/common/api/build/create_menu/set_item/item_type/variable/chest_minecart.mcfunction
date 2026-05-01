#> inv_gui:core/common/api/build/create_menu/set_item/item_type/variable/chest_minecart
# @within function inv_gui:core/common/api/build/create_menu/set_item/item_type/variable/_

## InvGui.Player を設定
    function inv_gui:core/common/gui_player/set


# Callback: olayı dinleyiciye ilet.
    execute at @s run function #inv_gui:set_variable/chest_minecart


## InvGui.Player を削除
    function inv_gui:core/common/gui_player/reset
