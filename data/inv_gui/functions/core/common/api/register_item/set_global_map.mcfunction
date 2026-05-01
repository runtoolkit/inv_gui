#> inv_gui:datacore/common/api/register_item/set_global_map
#
# Set in GlobalItemInfoMap
#
# @input
#   storage inv_gui:datatemp
#       ItemInfo: GlobalItemInfo
#           Value of the element to set
#
# @within function inv_gui:datacore/api/register_item/*/register_global_item

# Create map
    data modify storage inv_gui:datautil in.key set from storage inv_gui:data in.key
    data modify storage inv_gui:datautil in.value set from storage inv_gui:datatemp ItemInfo
    data modify storage inv_gui:datautil in.map set from storage inv_gui:datacore GlobalItemInfoMap
    function inv_gui:datautil/map/set

# Overwrite in GlobalItemInfoMap
    data modify storage inv_gui:datacore GlobalItemInfoMap set from storage inv_gui:datautil out.map
    function inv_gui:datautil/cleanup


# Clean up temporary data.
    data remove storage inv_gui:datatemp ItemInfo
