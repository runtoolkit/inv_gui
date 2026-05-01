#> inv_gui:core/common/api/build/get_item/_
#
# 指定されたアイテムを保存用シュルカーボックスから取得する
#
# @input
#   storage inv_gui:temp
#       TargetSlot: byte
#           取得するスロット
#
# @output
#   vector 10000 0 10000
#       container.0
#           取得したアイテム
#
# @within function inv_gui:core/**

#>
# @within function inv_gui:core/common/api/build/get_item/**
    #declare score_holder $TargetSlot


# 保存するスロットの値を取得
    execute store result score $TargetSlot InvGui run data get storage inv_gui:temp TargetSlot

# 保存用シュルカーボックスから取得
    execute positioned 10000 1 10000 run function inv_gui:core/common/api/build/get_item/b-0/0


# Geçici veriyi temizle.
    scoreboard players reset $TargetSlot InvGui
    data remove storage inv_gui:temp TargetSlot
