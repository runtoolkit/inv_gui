#> inv_gui:core/emitter/check_item_drop/_
#
# Fires the item drop as an event.
#
# @within function inv_gui:core/tick

#>
# @within function inv_gui:core/emitter/check_item_drop/**
    #declare tag InvGui.checkItemDrop.this

# Search for the dropped item
    tag @s add InvGui.checkItemDrop.this
    execute as @e[type=minecraft:item, distance=..5.0] run function inv_gui:core/emitter/check_item_drop/find_dropped_item/_
    tag @s remove InvGui.checkItemDrop.this
