#> inv_gui:datautil/map/core/set/update_map/add
# @within function inv_gui:datautil/map/core/set/update_map/_

# Create key-value element
    data modify storage inv_gui:datautil/temp Element.key set from storage inv_gui:datautil in.key
    data modify storage inv_gui:datautil/temp Element.value set from storage inv_gui:datautil in.value

# Return map containing added element
    data modify storage inv_gui:datautil out.map set from storage inv_gui:datautil in.map
    data modify storage inv_gui:datautil out.map append from storage inv_gui:datautil/temp Element

# Clean up temporary data.
    data remove storage inv_gui:datautil/temp Element
