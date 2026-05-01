#> inv_gui:datacore/common/api/register_item/set_local_map
#
# Set in LocalItemInfoMap
#
# @input
#   storage inv_gui:datatemp
#       ItemInfo: LocalItemInfo
#           Value of the element to set
#
# @within function inv_gui:datacore/api/register_item/*/register_local_item

# Create map
    data modify storage inv_gui:datautil in.key set from storage inv_gui:data in.key
    data modify storage inv_gui:datautil in.value set from storage inv_gui:datatemp ItemInfo
    data modify storage inv_gui:datautil in.map set from storage inv_gui:datacore LocalItemInfoMap
    function inv_gui:datautil/map/set

# Overwrite in LocalItemInfoMap
    data modify storage inv_gui:datacore LocalItemInfoMap set from storage inv_gui:datautil out.map
    function inv_gui:datautil/cleanup


# Clean up temporary data.
    data remove storage inv_gui:datatemp ItemInfo
