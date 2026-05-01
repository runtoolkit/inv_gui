#> inv_gui:datautil/map/core/set/update_map/update
# @within function inv_gui:datautil/map/core/set/update_map/_

# Update value for specified key
    data modify storage inv_gui:datautil/temp TargetElements[-1].value set from storage inv_gui:datautil in.value

# Restore the deleted element
    function inv_gui:datautil/map/core/set/update_map/element/revert

# Return map containing updated element
    data modify storage inv_gui:datautil out.map set from storage inv_gui:datautil/temp TargetElements
