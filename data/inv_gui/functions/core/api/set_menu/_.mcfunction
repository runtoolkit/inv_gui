#> inv_gui:datacore/api/set_menu/_
#
# @input
#   storage inv_gui:data in
#       id: any
#
# @within function inv_gui:dataapi/set_menu

## pre
    function inv_gui:datacore/common/api/set_menu/pre


# Selects the processing path based on the open container type.
    function #oh_my_dat:please
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui{CurrentMenuType:"Minecart"} run function inv_gui:datacore/api/set_menu/chest_minecart
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui{CurrentMenuType:"EnderChest"} run function inv_gui:datacore/api/set_menu/ender_chest

# Clean up temporary data.
    data remove storage inv_gui:data in


## post
    function inv_gui:datacore/common/api/set_menu/post
