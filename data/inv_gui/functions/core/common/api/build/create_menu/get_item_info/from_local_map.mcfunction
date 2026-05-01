#> inv_gui:datacore/common/api/build/create_menu/get_item_info/from_local_map
# @within function inv_gui:datacore/common/api/build/create_menu/get_item_info/_

# Retrieve registered element (LocalItemInfoMap)
    data modify storage inv_gui:datautil in.map set from storage inv_gui:datacore LocalItemInfoMap
    data modify storage inv_gui:datautil in.key set from storage inv_gui:datatemp Key
    function inv_gui:datautil/map/get


# Return the retrieved ItemInfo
    execute if data storage inv_gui:datautil out{contains:true} run data modify storage inv_gui:datatemp ItemInfo set from storage inv_gui:datautil out.value

# Return whether the item info is global.
    execute if data storage inv_gui:datautil out{contains:true} run data modify storage inv_gui:datatemp isGlobalItemInfo set value false
