#> inv_gui:datautil/array/core/reverse/_
#
# @input
#   storage inv_gui:datautil in
#       array: any[]
#
# @output
#   storage inv_gui:datautil out
#       array: any[]
#
# @within function inv_gui:datautil/array/reverse

# Reverse element order
    function inv_gui:datautil/array/core/reverse/loop

# Clean up temporary data.
    data remove storage inv_gui:datautil in
