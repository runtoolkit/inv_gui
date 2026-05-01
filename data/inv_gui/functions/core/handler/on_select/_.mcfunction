#> inv_gui:core/handler/on_select/_
#
# Called when a player selects a menu item.
#
# @input
#   storage inv_gui:datatemp
#       SelectionType: "CLICK" | "DROP"
#           Selection type
#
# @within function inv_gui:core/handler/*/_

## Set the CalledOnSelect flag.
    data modify storage inv_gui:core CalledOnSelect set value true


# Selects the processing path based on the open container type.
    function #oh_my_dat:please
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui{CurrentMenuType:"Minecart"} at @s run function inv_gui:core/handler/on_select/menu_type/chest_minecart/_
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui{CurrentMenuType:"EnderChest"} at @s run function inv_gui:core/handler/on_select/menu_type/ender_chest/_

# Clean up temporary data.
    data remove storage inv_gui:datatemp SelectionType


## Clear the CalledOnSelect flag.
    data remove storage inv_gui:core CalledOnSelect
