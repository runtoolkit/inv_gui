#> inv_gui:datautil/map/core/get/_
#
# @input
#   storage inv_gui:datautil in
#       map: Map
#       key: any
#
# @output
#   storage inv_gui:datautil out
#       value: any
#       contains: boolean
#
# @within function inv_gui:datautil/map/get

# Reset return values.
    data modify storage inv_gui:datautil out.contains set value false

# Search for element with specified key
    function inv_gui:datautil/map/core/get/search

# If array still has elements, the element for the specified key exists
    execute if data storage inv_gui:datautil in.map[-1] run data modify storage inv_gui:datautil out.contains set value true

# Clean up temporary data.
    data remove storage inv_gui:datautil/temp Key
    data remove storage inv_gui:datautil/temp Result
    data remove storage inv_gui:datautil in
