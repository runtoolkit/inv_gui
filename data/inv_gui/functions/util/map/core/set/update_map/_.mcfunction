#> inv_gui:util/map/core/set/update_map/_
# @within function inv_gui:util/map/core/set/_

# Copy target map
    data modify storage inv_gui:util/temp TargetElements set from storage inv_gui:util in.map

# Move element with specified key to TargetElements[-1]
    function inv_gui:util/map/core/set/update_map/element/move


# Specified key found → update map
    execute if data storage inv_gui:util/temp {Result:false} run function inv_gui:util/map/core/set/update_map/update

# Specified key not found → add element to map
    execute if data storage inv_gui:util/temp {Result:true} run function inv_gui:util/map/core/set/update_map/add


# Clean up temporary data.
    data remove storage inv_gui:util/temp TargetElements
    data remove storage inv_gui:util/temp DeletedElements
    data remove storage inv_gui:util/temp Key
    data remove storage inv_gui:util/temp Result
