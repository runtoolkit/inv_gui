#> inv_gui:util/array/core/reverse/loop
# @within function
#   inv_gui:util/array/core/reverse/_
#   inv_gui:util/array/core/reverse/loop

# 要素を移動
    data modify storage inv_gui:util out.array append from storage inv_gui:util in.array[-1]
    data remove storage inv_gui:util in.array[-1]

# すべての要素を移動するまで再帰
    execute if data storage inv_gui:util in.array[0] run function inv_gui:util/array/core/reverse/loop
