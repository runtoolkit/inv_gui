#> inv_gui:core/handler/on_container_close/ender_chest
#
# Called when an Ender Chest is closed.
#
# @within function inv_gui:core/emitter/check_container_close/ender_chest

## Set the isInCallback flag.
    function inv_gui:core/common/is_in_callback/set


# Callback: dispatch event to listener. (return Set value)
    data modify storage inv_gui:datatemp CurrentContents set from entity @s EnderItems
    data remove storage inv_gui:datatemp CurrentContents[{tag:{InvGui:{isButton:true}}}]

# Callback: dispatch event to listener.
    data modify storage inv_gui:data callback.otherItems set from storage inv_gui:datatemp CurrentContents
    function #inv_gui:datahandler/on_close/ender_chest

# Clean up temporary data.
    data remove storage inv_gui:data callback
    data remove storage inv_gui:datatemp CurrentContents


## Clear the isInCallback flag.
    function inv_gui:core/common/is_in_callback/reset


# Remove menu info from OhMyDat storage
    function #oh_my_dat:please
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.MenuId
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.Contents
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.CurrentMenuType
