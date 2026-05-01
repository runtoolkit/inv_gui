#> inv_gui:util/map/core/set/_
#
# @input
#   storage inv_gui:util in
#       key: any
#       value: any
#       map?: Map
#
# @output
#   storage inv_gui:util out
#       map: Map
#
# @within function inv_gui:util/map/set

# Target map provided → add/update map
    execute if data storage inv_gui:util in.map run function inv_gui:util/map/core/set/update_map/_

# No target map provided → create new map
    execute unless data storage inv_gui:util in.map run function inv_gui:util/map/core/set/create_map/_

# Clean up temporary data.
    data remove storage inv_gui:util in
