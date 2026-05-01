#> inv_gui:core/common/api/build/place_item/_
#
# 指定されたアイテムを作成用シュルカーボックスに配置する
#
# @input
#   vector 10000 0 10000
#       container.0
#           配置するアイテム
#   storage inv_gui:temp
#       TargetSlot: byte
#           配置するスロット
#
# @within function inv_gui:core/**

#>
# @within function inv_gui:core/common/api/build/place_item/**
    #declare score_holder $TargetSlot


# 保存するスロットの値を取得
    execute store result score $TargetSlot InvGui run data get storage inv_gui:temp TargetSlot

# 作成用シュルカーボックスに配置
    execute positioned 10000 2 10000 run function inv_gui:core/common/api/build/place_item/b-0/0

# Geçici veriyi temizle.
    item replace block 10000 0 10000 container.0 with minecraft:air
    scoreboard players reset $TargetSlot InvGui
    data remove storage inv_gui:temp TargetSlot
