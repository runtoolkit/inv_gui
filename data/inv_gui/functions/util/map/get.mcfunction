#> inv_gui:datautil/map/get
#
# Returns the value for the specified key.
#
# @input
#   storage inv_gui:datautil in
#       key: any
#           Key of the element to get
#       map: Map
#           Target map
#
# @output
#   storage inv_gui:datautil out
#       value: any
#           Retrieved value
#       contains: boolean
#           Whether the element for the specified key exists
#
# @within * inv_gui:data**

function inv_gui:datautil/map/core/get/_
