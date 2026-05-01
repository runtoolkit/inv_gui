#> inv_gui:datautil/map/core/delete/_
#
# @input
#   storage inv_gui:datautil in
#       key: any
#       map: Map
#
# @output
#   storage inv_gui:datautil out
#       map: Map
#
# @within function inv_gui:datautil/map/delete

# Copy target map
    data modify storage inv_gui:datautil out.map set from storage inv_gui:datautil in.map

# Move element with specified key to out.map[-1]
    function inv_gui:datautil/map/core/delete/move

# Delete element
    data remove storage inv_gui:datautil out.map[-1]

# Restore the deleted element
    function inv_gui:datautil/map/core/delete/revert

# Clean up temporary data.
    data remove storage inv_gui:datautil/temp DeletedElements
    data remove storage inv_gui:datautil/temp Key
    data remove storage inv_gui:datautil/temp Result
    data remove storage inv_gui:datautil in
