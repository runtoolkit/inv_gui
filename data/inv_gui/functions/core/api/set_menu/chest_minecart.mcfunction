#> inv_gui:core/api/set_menu/chest_minecart
# @within function inv_gui:core/api/set_menu/_

## isInCallback bayrağını true olarak işaretle.
    function inv_gui:core/common/is_in_callback/set

## InvGui.Target を設定
    function inv_gui:core/common/gui_target/set


# Callback: olayı dinleyiciye ilet.
    data modify storage inv_gui: callback.id set from storage inv_gui: in.id
    data remove storage inv_gui: in
    execute at @s run function #inv_gui:set_menu/chest_minecart

# Geçici veriyi temizle.
    data remove storage inv_gui: callback


## InvGui.Target を削除
    function inv_gui:core/common/gui_target/reset

## isInCallback bayrağını temizle.
    function inv_gui:core/common/is_in_callback/reset
