#> inv_gui:core/api/register_item/button/register_global_item
# @within function inv_gui:core/api/register_item/button/_

# GlobalItemInfoを構成
    data modify storage inv_gui:temp ItemInfo.ItemType set from storage inv_gui:temp ItemType
    data modify storage inv_gui:temp ItemInfo.Item set value {id:"minecraft:air", Slot:0b}
    data modify storage inv_gui:temp ItemInfo.Item set from block 10000 0 10000 Items[{Slot:0b}]

# GlobalItemInfoMapに設定
    function inv_gui:core/common/api/register_item/set_global_map
