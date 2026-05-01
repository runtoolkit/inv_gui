#> inv_gui:datautil/map/core/has/_
#
# @input
#   storage inv_gui:datautil in
#       key: any
#       map: Map
#
# @output
#   storage inv_gui:datautil out
#       contains: boolean
#
# @within function inv_gui:datautil/map/has

# Reset return values.
    data modify storage inv_gui:datautil out.contains set value false

# Search for element with specified key
    function inv_gui:datautil/map/core/has/search

# Clean up temporary data.
    data remove storage inv_gui:datautil/temp Key
    data remove storage inv_gui:datautil/temp Result
    data remove storage inv_gui:datautil in
