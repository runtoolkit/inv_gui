#> inv_gui:core/common/api/register_item/save_item/_
#
# Save the specified item to the registry shulker box.
#
# @input
#   vector 10000 0 10000
#       container.0
#           Item to save
#   storage inv_gui:datatemp
#       TargetSlot: byte
#           Slot to save to
#
# @within function inv_gui:core/**

#>
# @within function inv_gui:core/common/api/register_item/save_item/**
    #declare score_holder $TargetSlot


# Get values of slot to save to
    execute store result score $TargetSlot InvGui run data get storage inv_gui:datatemp TargetSlot

# Save to registry shulker box
    execute positioned 10000 1 10000 run function inv_gui:core/common/api/register_item/save_item/b-0/0


# Clean up temporary data.
    item replace block 10000 0 10000 container.0 with minecraft:air
    scoreboard players reset $TargetSlot InvGui
    data remove storage inv_gui:datatemp TargetSlot
