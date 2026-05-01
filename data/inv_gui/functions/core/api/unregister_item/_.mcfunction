#> inv_gui:datacore/api/unregister_item/_
#
# @input
#   storage inv_gui:data in
#       key: string
#
# @within function inv_gui:dataapi/unregister_item

# Remove from map
    data modify storage inv_gui:datautil in.key set from storage inv_gui:data in.key
    data modify storage inv_gui:datautil in.map set from storage inv_gui:datacore GlobalItemInfoMap
    function inv_gui:datautil/map/delete

# Overwrite in GlobalItemInfoMap
    data modify storage inv_gui:datacore GlobalItemInfoMap set from storage inv_gui:datautil out.map
    function inv_gui:datautil/cleanup

# Clean up temporary data.
    data remove storage inv_gui:data in
