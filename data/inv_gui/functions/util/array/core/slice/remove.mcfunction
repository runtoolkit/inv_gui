#> inv_gui:util/array/core/slice/remove
# @within function
#   inv_gui:util/array/core/slice/_
#   inv_gui:util/array/core/slice/remove

# 要素を取り除く
    data remove storage inv_gui:util in.array[-1]
    scoreboard players remove $Index InvGui 1

# すべての要素を取り除くまで再帰
    execute if score $Index InvGui matches 1.. run function inv_gui:util/array/core/slice/remove
