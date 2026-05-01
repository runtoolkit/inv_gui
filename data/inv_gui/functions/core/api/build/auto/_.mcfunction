#> inv_gui:datacore/api/build/auto/_
#
# @input
#   storage inv_gui:data in
#       id: any
#       contents: (string[] @ 9)[] @ 3
#
# @within function inv_gui:dataapi/build/auto

# Selects the processing path based on the open container type.
    function #oh_my_dat:please
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui{CurrentMenuType:"Minecart"} as @e[type=minecraft:chest_minecart, tag=InvGui.Target] run function inv_gui:dataapi/build/chest_minecart
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui{CurrentMenuType:"EnderChest"} run function inv_gui:dataapi/build/ender_chest

# Clean up temporary data.
    data remove storage inv_gui:data in
