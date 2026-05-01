#> inv_gui:core/common/api/build/create_menu/get_item_info/from_local_map
# @within function inv_gui:core/common/api/build/create_menu/get_item_info/_

# 登録済みの要素を取得 (LocalItemInfoMap)
    data modify storage inv_gui:util in.map set from storage inv_gui:core LocalItemInfoMap
    data modify storage inv_gui:util in.key set from storage inv_gui:temp Key
    function inv_gui:util/map/get


# 取得したItemInfoを返す
    execute if data storage inv_gui:util out{contains:true} run data modify storage inv_gui:temp ItemInfo set from storage inv_gui:util out.value

# GlobalItemInfoかどうかを返す
    execute if data storage inv_gui:util out{contains:true} run data modify storage inv_gui:temp isGlobalItemInfo set value false
