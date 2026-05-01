#> inv_gui:datautil/array/core/slice/move
# @within function
#   inv_gui:datautil/array/core/slice/_
#   inv_gui:datautil/array/core/slice/move

# Extract element
    data modify storage inv_gui:datautil/temp Sliced append from storage inv_gui:datautil in.array[-1]
    data remove storage inv_gui:datautil in.array[-1]
    scoreboard players remove $Index InvGui 1

# Recurse until all elements are extracted
    execute if score $Index InvGui matches 1.. run function inv_gui:datautil/array/core/slice/move
