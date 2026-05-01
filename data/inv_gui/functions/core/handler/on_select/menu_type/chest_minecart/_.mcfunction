#> inv_gui:core/handler/on_select/menu_type/chest_minecart/_
# @within function inv_gui:core/handler/on_select/_

## Assign InvGui.Target tag
    function inv_gui:core/common/gui_target/set


# Get menu info
    execute as @e[type=minecraft:chest_minecart, tag=InvGui.Target] run function #oh_my_dat:please
    data modify storage inv_gui:datatemp MenuId set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.MenuId
    data modify storage inv_gui:datatemp Contents set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.Contents
    data modify storage inv_gui:datatemp CurrentContents set from entity @e[type=minecraft:chest_minecart, tag=InvGui.Target, limit=1] Items

# Get item in the changed slot
    function inv_gui:core/handler/on_select/get_changed_slot

# Get normal item
    data remove storage inv_gui:datatemp CurrentContents[{tag:{InvGui:{isButton:true}}}]

# Callback: dispatch event to listener.
    function inv_gui:core/handler/on_select/menu_type/chest_minecart/callback

# Clean up temporary data.
    data remove storage inv_gui:datatemp MenuId
    data remove storage inv_gui:datatemp Contents
    data remove storage inv_gui:datatemp CurrentContents
    data remove storage inv_gui:datatemp Item


## Remove InvGui.Target tag
    function inv_gui:core/common/gui_target/reset
