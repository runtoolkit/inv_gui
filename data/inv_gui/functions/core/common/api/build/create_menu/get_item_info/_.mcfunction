#> inv_gui:datacore/common/api/build/create_menu/get_item_info/_
#
# Returns the ItemInfo for the specified key.
#
# @input
#   storage inv_gui:datatemp
#       Key: string
#           Key of the element to get
#
# @output
#   storage inv_gui:datatemp
#       ItemInfo: ItemInfo
#           Retrieved ItemInfo
#       isGlobalItemInfo: boolean
#           Whether the item info is global
#
# @within function inv_gui:datacore/common/api/build/create_menu/set_item/_

# Retrieve from LocalItemInfoMap
    function inv_gui:datacore/common/api/build/create_menu/get_item_info/from_local_map

# Retrieve from GlobalItemInfoMap
    execute if data storage inv_gui:datautil out{contains:false} run function inv_gui:datacore/common/api/build/create_menu/get_item_info/from_global_map


# Reset util storage.
    function inv_gui:datautil/cleanup

# Clean up temporary data.
    data remove storage inv_gui:datatemp Key
