#> inv_gui:datautil/array/core/reverse/loop
# @within function
#   inv_gui:datautil/array/core/reverse/_
#   inv_gui:datautil/array/core/reverse/loop

# Move element
    data modify storage inv_gui:datautil out.array append from storage inv_gui:datautil in.array[-1]
    data remove storage inv_gui:datautil in.array[-1]

# Recurse until all elements are moved
    execute if data storage inv_gui:datautil in.array[0] run function inv_gui:datautil/array/core/reverse/loop
