#> inv_gui:datacore/common/api/build/place_item/_
#
# Places the specified item into the build shulker box.
#
# @input
#   vector 10000 0 10000
#       container.0
#           Item to place
#   storage inv_gui:datatemp
#       TargetSlot: byte
#           Target slot
#
# @within function inv_gui:datacore/**

#>
# @within function inv_gui:datacore/common/api/build/place_item/**
    #declare score_holder $TargetSlot


# Get values of slot to save to
    execute store result score $TargetSlot InvGui run data get storage inv_gui:datatemp TargetSlot

# Place in build shulker box
    execute positioned 10000 2 10000 run function inv_gui:datacore/common/api/build/place_item/b-0/0

# Clean up temporary data.
    item replace block 10000 0 10000 container.0 with minecraft:air
    scoreboard players reset $TargetSlot InvGui
    data remove storage inv_gui:datatemp TargetSlot
