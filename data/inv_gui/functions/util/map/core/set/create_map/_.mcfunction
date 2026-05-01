#> inv_gui:util/map/core/set/create_map/_
# @within function inv_gui:util/map/core/set/_

# Create key-value element
    data modify storage inv_gui:util/temp Element.key set from storage inv_gui:util in.key
    data modify storage inv_gui:util/temp Element.value set from storage inv_gui:util in.value

# Return map containing the created element
    data modify storage inv_gui:util out.map append from storage inv_gui:util/temp Element

# Clean up temporary data.
    data remove storage inv_gui:util/temp Element
