#> inv_gui:datautil/map/core/delete/move
# @within function
#   inv_gui:datautil/map/core/delete/_
#   inv_gui:datautil/map/core/delete/move

# Test if the key at the end of the array matches
    data modify storage inv_gui:datautil/temp Key set from storage inv_gui:datautil out.map[-1].key
    execute store success storage inv_gui:datautil/temp Result byte 1.0 run data modify storage inv_gui:datautil/temp Key set from storage inv_gui:datautil in.key

# Key does not match → move last array element to separate data
    execute if data storage inv_gui:datautil/temp {Result:true} run data modify storage inv_gui:datautil/temp DeletedElements append from storage inv_gui:datautil out.map[-1]
    execute if data storage inv_gui:datautil/temp {Result:true} run data remove storage inv_gui:datautil out.map[-1]

# Recurse until key matches or all elements are searched
    execute if data storage inv_gui:datautil/temp {Result:true} if data storage inv_gui:datautil out.map[-1] run function inv_gui:datautil/map/core/delete/move
