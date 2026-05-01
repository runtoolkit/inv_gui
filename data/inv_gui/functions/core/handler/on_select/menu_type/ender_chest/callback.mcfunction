#> inv_gui:core/handler/on_select/menu_type/ender_chest/callback
# @within function inv_gui:core/handler/on_select/menu_type/ender_chest/_

## isInCallback bayrağını true olarak işaretle.
    function inv_gui:core/common/is_in_callback/set


# Callback: olayı dinleyiciye ilet.
    data modify storage inv_gui: callback.id set from storage inv_gui:temp MenuId
    data modify storage inv_gui: callback.listener set from storage inv_gui:temp Item.tag.InvGui.listener
    data modify storage inv_gui: callback.selectedItem set from storage inv_gui:temp Item
    data modify storage inv_gui: callback.selectionType set from storage inv_gui:temp SelectionType
    data modify storage inv_gui: callback.otherItems set from storage inv_gui:temp CurrentContents
    function #inv_gui:handler/on_select/ender_chest

# Geçici veriyi temizle.
    data remove storage inv_gui: callback


## isInCallback bayrağını temizle.
    function inv_gui:core/common/is_in_callback/reset


# Callback sırasında Build API çağrılmadıysa mevcut menüyü güncelle.
    execute unless data storage inv_gui:core {CalledBuildApi:true} run function inv_gui:core/handler/on_select/menu_type/ender_chest/set_current_menu

# Geçici veriyi temizle.
    data remove storage inv_gui:core CalledBuildApi
