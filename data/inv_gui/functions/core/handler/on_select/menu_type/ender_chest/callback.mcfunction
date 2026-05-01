#> inv_gui:datacore/handler/on_select/menu_type/ender_chest/callback
# @within function inv_gui:datacore/handler/on_select/menu_type/ender_chest/_

## Set the isInCallback flag.
    function inv_gui:datacore/common/is_in_callback/set


# Callback: dispatch event to listener.
    data modify storage inv_gui:data callback.id set from storage inv_gui:datatemp MenuId
    data modify storage inv_gui:data callback.listener set from storage inv_gui:datatemp Item.tag.InvGui.listener
    data modify storage inv_gui:data callback.selectedItem set from storage inv_gui:datatemp Item
    data modify storage inv_gui:data callback.selectionType set from storage inv_gui:datatemp SelectionType
    data modify storage inv_gui:data callback.otherItems set from storage inv_gui:datatemp CurrentContents
    function #inv_gui:datahandler/on_select/ender_chest

# Clean up temporary data.
    data remove storage inv_gui:data callback


## Clear the isInCallback flag.
    function inv_gui:datacore/common/is_in_callback/reset


# If Build API was not called during the callback, update the current menu.
    execute unless data storage inv_gui:datacore {CalledBuildApi:true} run function inv_gui:datacore/handler/on_select/menu_type/ender_chest/set_current_menu

# Clean up temporary data.
    data remove storage inv_gui:datacore CalledBuildApi
