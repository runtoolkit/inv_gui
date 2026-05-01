#> inv_gui:core/handler/on_select/menu_type/ender_chest/_
# @within function inv_gui:core/handler/on_select/_

# Get menu info
    function #oh_my_dat:please
    data modify storage inv_gui:datatemp MenuId set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.MenuId
    data modify storage inv_gui:datatemp Contents set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.Contents
    data modify storage inv_gui:datatemp CurrentContents set from entity @s EnderItems

# Get item in the changed slot
    function inv_gui:core/handler/on_select/get_changed_slot

# Get normal item
    data remove storage inv_gui:datatemp CurrentContents[{tag:{InvGui:{isButton:true}}}]

# Callback: dispatch event to listener.
    function inv_gui:core/handler/on_select/menu_type/ender_chest/callback

# Clean up temporary data.
    data remove storage inv_gui:datatemp MenuId
    data remove storage inv_gui:datatemp Contents
    data remove storage inv_gui:datatemp CurrentContents
    data remove storage inv_gui:datatemp Item
