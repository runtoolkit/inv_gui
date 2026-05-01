#> inv_gui:datacore/common/api/register_item/get_slot_index
#
# Get item at slot to save to
#
# @output
#   storage inv_gui:datatemp
#       Slot: byte
#           Retrieved slot
#
# @within function inv_gui:datacore/api/register_item/*/register_local_item

# Get item at slot to save to
    execute store result storage inv_gui:datatemp Slot byte 1.0 run scoreboard players get $LocalItemSlotIndex InvGui

# Change item at slot to save to
    scoreboard players add $LocalItemSlotIndex InvGui 1
    execute if score $LocalItemSlotIndex InvGui matches 27 run scoreboard players set $LocalItemSlotIndex InvGui 0
