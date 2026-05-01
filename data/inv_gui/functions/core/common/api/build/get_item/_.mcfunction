#> inv_gui:datacore/common/api/build/get_item/_
#
# Retrieves the specified item from the registry shulker box.
#
# @input
#   storage inv_gui:datatemp
#       TargetSlot: byte
#           Slot to retrieve
#
# @output
#   vector 10000 0 10000
#       container.0
#           Retrieved item
#
# @within function inv_gui:datacore/**

#>
# @within function inv_gui:datacore/common/api/build/get_item/**
    #declare score_holder $TargetSlot


# Get values of slot to save to
    execute store result score $TargetSlot InvGui run data get storage inv_gui:datatemp TargetSlot

# Retrieve from registry shulker box
    execute positioned 10000 1 10000 run function inv_gui:datacore/common/api/build/get_item/b-0/0


# Clean up temporary data.
    scoreboard players reset $TargetSlot InvGui
    data remove storage inv_gui:datatemp TargetSlot
