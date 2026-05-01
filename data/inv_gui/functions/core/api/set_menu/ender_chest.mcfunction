#> inv_gui:core/api/set_menu/ender_chest
# @within function inv_gui:core/api/set_menu/_

## isInCallback bayrağını true olarak işaretle.
    function inv_gui:core/common/is_in_callback/set


# Callback: olayı dinleyiciye ilet.
    data modify storage inv_gui: callback.id set from storage inv_gui: in.id
    data remove storage inv_gui: in
    execute at @s run function #inv_gui:set_menu/ender_chest

# Geçici veriyi temizle.
    data remove storage inv_gui: callback


## isInCallback bayrağını temizle.
    function inv_gui:core/common/is_in_callback/reset
