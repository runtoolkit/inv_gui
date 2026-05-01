#> inv_gui:util/array/core/flat/loop
# @within function
#   inv_gui:util/array/core/flat/_
#   inv_gui:util/array/core/flat/loop

# Test if NBT at ArrayList[-1][-1] is a list
    execute store success storage inv_gui:util/temp isListTag byte 1.0 run data modify storage inv_gui:util/temp ArrayList[-1] append value []

# If NBT is a list → reference that list next
    execute if data storage inv_gui:util/temp {isListTag:true} run data remove storage inv_gui:util/temp ArrayList[-1][-1]
    execute if data storage inv_gui:util/temp {isListTag:true} run data modify storage inv_gui:util/temp ArrayList append from storage inv_gui:util/temp ArrayList[-1][-1]

# If NBT is not a list → append to result
    execute if data storage inv_gui:util/temp {isListTag:false} run data modify storage inv_gui:util/temp Flattened append from storage inv_gui:util/temp ArrayList[-1][-1]
    execute if data storage inv_gui:util/temp {isListTag:false} run data remove storage inv_gui:util/temp ArrayList[-1][-1]

# Referenced list is empty → remove it and the parent list
    execute unless data storage inv_gui:util/temp ArrayList[-1][0] run data remove storage inv_gui:util/temp ArrayList[-2][-1]
    execute unless data storage inv_gui:util/temp ArrayList[-1][0] run data remove storage inv_gui:util/temp ArrayList[-1]

# Recurse until all elements are flattened
    execute if data storage inv_gui:util/temp ArrayList[0] run function inv_gui:util/array/core/flat/loop
