#> inv_gui:core/emitter/check_item_drop/find_dropped_item/_
# @within function inv_gui:core/emitter/check_item_drop/_

# Get data of the dropped item
    data modify storage inv_gui:datatemp ItemEntity set from entity @s

# Verify Thrower and UUID match
    execute store success storage inv_gui:datatemp Result byte 1.0 run data modify storage inv_gui:datatemp ItemEntity.Thrower set from entity @a[tag=InvGui.checkItemDrop.this, distance=..5.0, limit=1] UUID

# Thrower and UUID match → dropped item is a button → dropped item found
    execute if data storage inv_gui:datatemp {Result:false} if data storage inv_gui:datatemp ItemEntity.Item.tag.InvGui{isButton:true} run function inv_gui:core/emitter/check_item_drop/found_dropped_item/item
    execute if data storage inv_gui:datatemp {Result:false} if data storage inv_gui:datatemp ItemEntity.Item.tag.InvGui{isButton:true} as @a[tag=InvGui.checkItemDrop.this, distance=..5.0, limit=1] run function inv_gui:core/emitter/check_item_drop/found_dropped_item/player

# Clean up temporary data.
    data remove storage inv_gui:datatemp ItemEntity
    data remove storage inv_gui:datatemp Result
