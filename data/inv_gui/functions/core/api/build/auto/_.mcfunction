#> inv_gui:core/api/build/auto/_
#
# @input
#   storage inv_gui:data in
#       id: any
#       contents: (string[] @ 9)[] @ 3
#
# @within function inv_gui:api/build/auto

# Processing for each type of opened chest
    function #oh_my_dat:please
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inv GUI{CurrentMenuType:"Minecart"} as @e[type=minecraft:chest_minecart, tag=Inv GUI.Target] run function inv_gui:api/build/chest_minecart
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inv GUI{CurrentMenuType:"EnderChest"} run function inv_gui:api/build/ender_chest

# Reset
    data remove storage inv_gui:data in
