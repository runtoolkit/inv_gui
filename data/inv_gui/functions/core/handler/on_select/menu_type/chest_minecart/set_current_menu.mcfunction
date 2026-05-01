#> inv_gui:datacore/handler/on_select/menu_type/chest_minecart/set_current_menu
# @within function inv_gui:datacore/handler/on_select/menu_type/chest_minecart/callback

## Set the isInCallback flag.
    function inv_gui:datacore/common/is_in_callback/set


# Callback: dispatch event to listener.
    data modify storage inv_gui:data callback.id set from storage inv_gui:datatemp MenuId
    function #inv_gui:dataset_menu/chest_minecart

# Clean up temporary data.
    data remove storage inv_gui:data callback


## Clear the isInCallback flag.
    function inv_gui:datacore/common/is_in_callback/reset
