#> inv_gui:util/array/core/slice/move
# @within function
#   inv_gui:util/array/core/slice/_
#   inv_gui:util/array/core/slice/move

# 要素を取り出す
    data modify storage inv_gui:util/temp Sliced append from storage inv_gui:util in.array[-1]
    data remove storage inv_gui:util in.array[-1]
    scoreboard players remove $Index InvGui 1

# すべての要素を取り出すまで再帰
    execute if score $Index InvGui matches 1.. run function inv_gui:util/array/core/slice/move
