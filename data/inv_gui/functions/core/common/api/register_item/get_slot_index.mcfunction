#> inv_gui:core/common/api/register_item/get_slot_index
#
# アイテムを保存するスロットを取得する
#
# @output
#   storage inv_gui:temp
#       Slot: byte
#           取得したスロット
#
# @within function inv_gui:core/api/register_item/*/register_local_item

# アイテムを保存するスロットを取得
    execute store result storage inv_gui:temp Slot byte 1.0 run scoreboard players get $LocalItemSlotIndex InvGui

# アイテムを保存するスロットを変更
    scoreboard players add $LocalItemSlotIndex InvGui 1
    execute if score $LocalItemSlotIndex InvGui matches 27 run scoreboard players set $LocalItemSlotIndex InvGui 0
