#> inv_gui:datacore/handler/on_container_close/chest_minecart
#
# Called when a Chest Minecart is closed.
#
# @within function inv_gui:datacore/emitter/check_container_close/chest_minecart

## Set the isInCallback flag.
    function inv_gui:datacore/common/is_in_callback/set

## Assign InvGui.Target tag
    function inv_gui:datacore/common/gui_target/set


# Callback: dispatch event to listener. (return Set value)
    data modify storage inv_gui:datatemp CurrentContents set from entity @e[type=minecraft:chest_minecart, tag=InvGui.Target, limit=1] Items
    data remove storage inv_gui:datatemp CurrentContents[{tag:{InvGui:{isButton:true}}}]

# Callback: dispatch event to listener.
    data modify storage inv_gui:data callback.otherItems set from storage inv_gui:datatemp CurrentContents
    function #inv_gui:datahandler/on_close/chest_minecart

# Clean up temporary data.
    data remove storage inv_gui:data callback
    data remove storage inv_gui:datatemp CurrentContents


## Remove InvGui.Target tag
    function inv_gui:datacore/common/gui_target/reset

## Clear the isInCallback flag.
    function inv_gui:datacore/common/is_in_callback/reset


# Remove menu info from OhMyDat storage
    function #oh_my_dat:please
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.CurrentMenuType

# Remove InvGui.Id
    scoreboard players reset @s InvGui.Id
