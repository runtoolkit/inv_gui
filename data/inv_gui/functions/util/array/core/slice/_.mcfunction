#> inv_gui:datautil/array/core/slice/_
#
# @input
#   storage inv_gui:datautil in
#       array: any[]
#       start?: int
#       end?: int
#
# @output
#   storage inv_gui:datautil out
#       array: any[]
#
# @within function inv_gui:datautil/array/slice

#>
# @private
    #declare score_holder $End
    #declare score_holder $Start

#>
# @within inv_gui:datautil/array/core/slice/**
    #declare score_holder $Index


# Reset arguments.
    execute unless data storage inv_gui:datautil in.end run data modify storage inv_gui:datautil in.end set value 2147483647
    execute unless data storage inv_gui:datautil in.start run data modify storage inv_gui:datautil in.start set value 0

# Reset return values.
    data modify storage inv_gui:datautil out.array set value []


# Get values
    execute store result score $End InvGui run data get storage inv_gui:datautil in.end
    execute store result score $Start InvGui run data get storage inv_gui:datautil in.start

# Remove elements from end index onwards
    execute store result score $Index InvGui if data storage inv_gui:datautil in.array[]
    scoreboard players operation $Index InvGui -= $End InvGui
    execute if score $Index InvGui matches 1.. run function inv_gui:datautil/array/core/slice/remove

# Extract elements from start index onwards
    execute store result score $Index InvGui if data storage inv_gui:datautil in.array[]
    scoreboard players operation $Index InvGui -= $Start InvGui
    execute if score $Index InvGui matches 1.. run function inv_gui:datautil/array/core/slice/move


# Reverse element order
    data modify storage inv_gui:datautil in.array set from storage inv_gui:datautil/temp Sliced
    function inv_gui:datautil/array/reverse


# Clean up temporary data.
    scoreboard players reset $End InvGui
    scoreboard players reset $Start InvGui
    scoreboard players reset $Index InvGui
    data remove storage inv_gui:datautil/temp Sliced
    data remove storage inv_gui:datautil in
