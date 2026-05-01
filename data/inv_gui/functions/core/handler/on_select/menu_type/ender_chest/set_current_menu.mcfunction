#> inv_gui:core/handler/on_select/menu_type/ender_chest/set_current_menu
# @within function inv_gui:core/handler/on_select/menu_type/ender_chest/callback

## isInCallback bayrağını true olarak işaretle.
    function inv_gui:core/common/is_in_callback/set


# Callback: olayı dinleyiciye ilet.
    data modify storage inv_gui: callback.id set from storage inv_gui:temp MenuId
    function #inv_gui:set_menu/ender_chest

# Geçici veriyi temizle.
    data remove storage inv_gui: callback


## isInCallback bayrağını temizle.
    function inv_gui:core/common/is_in_callback/reset
