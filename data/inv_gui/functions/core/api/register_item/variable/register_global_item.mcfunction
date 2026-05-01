#> inv_gui:datacore/api/register_item/variable/register_global_item
# @within function inv_gui:datacore/api/register_item/variable/_

# Compose GlobalItemInfo
    data modify storage inv_gui:datatemp ItemInfo.ItemType set from storage inv_gui:datatemp ItemType
    data modify storage inv_gui:datatemp ItemInfo.Item set value {id:"minecraft:air", Slot:0b}

# Set in GlobalItemInfoMap
    function inv_gui:datacore/common/api/register_item/set_global_map
