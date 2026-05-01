#> inv_gui:datautil/array/core/flat/_
#
# @input
#   storage inv_gui:datautil in
#       array: any[]
#
# @output
#   storage inv_gui:datautil out
#       array: any[]
#
# @within function inv_gui:datautil/array/flat

# Flatten recursively
    data modify storage inv_gui:datautil/temp ArrayList append from storage inv_gui:datautil in.array
    function inv_gui:datautil/array/core/flat/loop

# Reverse element order
    data modify storage inv_gui:datautil in.array set from storage inv_gui:datautil/temp Flattened
    function inv_gui:datautil/array/reverse

# Clean up temporary data.
    data remove storage inv_gui:datautil/temp ArrayList
    data remove storage inv_gui:datautil/temp Flattened
    data remove storage inv_gui:datautil/temp isListTag
    data remove storage inv_gui:datautil in
