#> inv_gui:core/api/set_menu/chest_minecart
# @within function inv_gui:core/api/set_menu/_

## Set the isInCallback flag.
    function inv_gui:core/common/is_in_callback/set

## Assign InvGui.Target tag
    function inv_gui:core/common/gui_target/set


# Callback: dispatch event to listener.
    data modify storage inv_gui:data callback.id set from storage inv_gui:data in.id
    data remove storage inv_gui:data in
    execute at @s run function #inv_gui:dataset_menu/chest_minecart

# Clean up temporary data.
    data remove storage inv_gui:data callback


## Remove InvGui.Target tag
    function inv_gui:core/common/gui_target/reset

## Clear the isInCallback flag.
    function inv_gui:core/common/is_in_callback/reset
