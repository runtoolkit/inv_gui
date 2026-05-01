#> inv_gui:core/common/api/build/create_menu/get_item_info/from_local_map
# @within function inv_gui:core/common/api/build/create_menu/get_item_info/_

# Retrieve registered element (LocalItemInfoMap)
    data modify storage inv_gui:util in.map set from storage inv_gui:core LocalItemInfoMap
    data modify storage inv_gui:util in.key set from storage inv_gui:datatemp Key
    function inv_gui:util/map/get


# Return the retrieved ItemInfo
    execute if data storage inv_gui:util out{contains:true} run data modify storage inv_gui:datatemp ItemInfo set from storage inv_gui:util out.value

# Return whether the item info is global.
    execute if data storage inv_gui:util out{contains:true} run data modify storage inv_gui:datatemp isGlobalItemInfo set value false
