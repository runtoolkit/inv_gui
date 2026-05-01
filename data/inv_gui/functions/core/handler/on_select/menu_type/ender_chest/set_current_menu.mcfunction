#> inv_gui:core/handler/on_select/menu_type/ender_chest/set_current_menu
# @within function inv_gui:core/handler/on_select/menu_type/ender_chest/callback

## Set the isInCallback flag.
    function inv_gui:core/common/is_in_callback/set


# Callback: dispatch event to listener.
    data modify storage inv_gui:data callback.id set from storage inv_gui:datatemp MenuId
    function #inv_gui:dataset_menu/ender_chest

# Clean up temporary data.
    data remove storage inv_gui:data callback


## Clear the isInCallback flag.
    function inv_gui:core/common/is_in_callback/reset
