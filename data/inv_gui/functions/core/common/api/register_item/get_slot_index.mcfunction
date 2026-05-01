#> inv_gui:core/common/api/register_item/get_slot_index
#
# Get slot to save item
#
# @output
#   storage inv_gui:temp
#       Slot: byte
#           Retrieved slot
#
# @within function inv_gui:core/api/register_item/*/register_local_item

# Get slot to save item
    execute store result storage inv_gui:temp Slot byte 1.0 run scoreboard players get $LocalItemSlotIndex Inv GUI

# Change slot to save item
    scoreboard players add $LocalItemSlotIndex Inv GUI 1
    execute if score $LocalItemSlotIndex Inv GUI matches 27 run scoreboard players set $LocalItemSlotIndex Inv GUI 0
