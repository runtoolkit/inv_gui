#> inv_gui:core/emitter/check_item_drop/find_dropped_item/_
# @within function inv_gui:core/emitter/check_item_drop/_

# ドロップされたアイテムのデータを取得
    data modify storage inv_gui:temp ItemEntity set from entity @s

# ThrowerとUUIDの一致を確認
    execute store success storage inv_gui:temp Result byte 1.0 run data modify storage inv_gui:temp ItemEntity.Thrower set from entity @a[tag=InvGui.checkItemDrop.this, distance=..5.0, limit=1] UUID

# ThrowerとUUIDが一致 -> ドロップされたアイテムがボタン -> ドロップされたアイテムを発見
    execute if data storage inv_gui:temp {Result:false} if data storage inv_gui:temp ItemEntity.Item.tag.InvGui{isButton:true} run function inv_gui:core/emitter/check_item_drop/found_dropped_item/item
    execute if data storage inv_gui:temp {Result:false} if data storage inv_gui:temp ItemEntity.Item.tag.InvGui{isButton:true} as @a[tag=InvGui.checkItemDrop.this, distance=..5.0, limit=1] run function inv_gui:core/emitter/check_item_drop/found_dropped_item/player

# Geçici veriyi temizle.
    data remove storage inv_gui:temp ItemEntity
    data remove storage inv_gui:temp Result
