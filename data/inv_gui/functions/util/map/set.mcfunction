#> inv_gui:datautil/map/set
#
# Adds, updates, or creates an element with the specified key and value.
#
# @input
#   storage inv_gui:datautil in
#       key: any
#           Key of the element to set
#       value: any
#           Value of the element to set
#       map?: Map
#           Target map to add/update (optional)
#
# @output
#   storage inv_gui:datautil out
#       map: Map
#           Map containing the set element
#
# @within * inv_gui:data**

function inv_gui:datautil/map/core/set/_
