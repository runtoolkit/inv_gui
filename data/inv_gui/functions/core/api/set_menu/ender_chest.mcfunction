#> inv_gui:core/api/set_menu/ender_chest
# @within function inv_gui:core/api/set_menu/_

## Set the isInCallback flag.
    function inv_gui:core/common/is_in_callback/set


# Callback: dispatch event to listener.
    data modify storage inv_gui:data callback.id set from storage inv_gui:data in.id
    data remove storage inv_gui:data in
    execute at @s run function #inv_gui:dataset_menu/ender_chest

# Clean up temporary data.
    data remove storage inv_gui:data callback


## Clear the isInCallback flag.
    function inv_gui:core/common/is_in_callback/reset
