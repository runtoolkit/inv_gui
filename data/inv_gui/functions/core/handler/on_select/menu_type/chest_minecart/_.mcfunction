#> inv_gui:core/handler/on_select/menu_type/chest_minecart/_
# @within function inv_gui:core/handler/on_select/_

## Set Inv GUI.Target
    function inv_gui:core/common/inv_gui_target/set


# Get menu info
    execute as @e[type=minecraft:chest_minecart, tag=Inv GUI.Target] run function #oh_my_dat:please
    data modify storage inv_gui:temp MenuId set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inv GUI.MenuId
    data modify storage inv_gui:temp Contents set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inv GUI.Contents
    data modify storage inv_gui:temp CurrentContents set from entity @e[type=minecraft:chest_minecart, tag=Inv GUI.Target, limit=1] Items

# Get item in changed slot
    function inv_gui:core/handler/on_select/get_changed_slot

# Get normal item
    data remove storage inv_gui:temp CurrentContents[{tag:{Inv GUI:{isButton:true}}}]

# Callback
    function inv_gui:core/handler/on_select/menu_type/chest_minecart/callback

# Reset
    data remove storage inv_gui:temp MenuId
    data remove storage inv_gui:temp Contents
    data remove storage inv_gui:temp CurrentContents
    data remove storage inv_gui:temp Item


## Remove Inv GUI.Target
    function inv_gui:core/common/inv_gui_target/reset
