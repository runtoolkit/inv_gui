#> inv_gui:datautil/array/core/slice/remove
# @within function
#   inv_gui:datautil/array/core/slice/_
#   inv_gui:datautil/array/core/slice/remove

# Remove element
    data remove storage inv_gui:datautil in.array[-1]
    scoreboard players remove $Index InvGui 1

# Recurse until all elements are removed
    execute if score $Index InvGui matches 1.. run function inv_gui:datautil/array/core/slice/remove
