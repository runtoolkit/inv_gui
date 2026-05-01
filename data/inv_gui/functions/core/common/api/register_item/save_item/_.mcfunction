#> inv_gui:core/common/api/register_item/save_item/_
#
# 指定されたアイテムを保存用シュルカーボックスに保存する
#
# @input
#   vector 10000 0 10000
#       container.0
#           保存するアイテム
#   storage inv_gui:temp
#       TargetSlot: byte
#           保存するスロット
#
# @within function inv_gui:core/**

#>
# @within function inv_gui:core/common/api/register_item/save_item/**
    #declare score_holder $TargetSlot


# 保存するスロットの値を取得
    execute store result score $TargetSlot InvGui run data get storage inv_gui:temp TargetSlot

# 保存用シュルカーボックスに保存
    execute positioned 10000 1 10000 run function inv_gui:core/common/api/register_item/save_item/b-0/0


# Geçici veriyi temizle.
    item replace block 10000 0 10000 container.0 with minecraft:air
    scoreboard players reset $TargetSlot InvGui
    data remove storage inv_gui:temp TargetSlot
