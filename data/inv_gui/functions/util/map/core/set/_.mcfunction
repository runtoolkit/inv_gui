#> inv_gui:datautil/map/core/set/_
#
# @input
#   storage inv_gui:datautil in
#       key: any
#       value: any
#       map?: Map
#
# @output
#   storage inv_gui:datautil out
#       map: Map
#
# @within function inv_gui:datautil/map/set

# Target map provided → add/update map
    execute if data storage inv_gui:datautil in.map run function inv_gui:datautil/map/core/set/update_map/_

# No target map provided → create new map
    execute unless data storage inv_gui:datautil in.map run function inv_gui:datautil/map/core/set/create_map/_

# Clean up temporary data.
    data remove storage inv_gui:datautil in
