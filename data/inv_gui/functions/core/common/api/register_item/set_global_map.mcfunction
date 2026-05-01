#> inv_gui:core/common/api/register_item/set_global_map
#
# GlobalItemInfoMapに設定する
#
# @input
#   storage inv_gui:temp
#       ItemInfo: GlobalItemInfo
#           設定する要素の値
#
# @within function inv_gui:core/api/register_item/*/register_global_item

# Mapを作成
    data modify storage inv_gui:util in.key set from storage inv_gui: in.key
    data modify storage inv_gui:util in.value set from storage inv_gui:temp ItemInfo
    data modify storage inv_gui:util in.map set from storage inv_gui:core GlobalItemInfoMap
    function inv_gui:util/map/set

# GlobalItemInfoMapに上書き
    data modify storage inv_gui:core GlobalItemInfoMap set from storage inv_gui:util out.map
    function inv_gui:util/cleanup


# Geçici veriyi temizle.
    data remove storage inv_gui:temp ItemInfo
