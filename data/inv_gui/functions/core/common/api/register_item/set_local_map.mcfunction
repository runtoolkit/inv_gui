#> inv_gui:core/common/api/register_item/set_local_map
#
# LocalItemInfoMapに設定する
#
# @input
#   storage inv_gui:temp
#       ItemInfo: LocalItemInfo
#           設定する要素の値
#
# @within function inv_gui:core/api/register_item/*/register_local_item

# Mapを作成
    data modify storage inv_gui:util in.key set from storage inv_gui: in.key
    data modify storage inv_gui:util in.value set from storage inv_gui:temp ItemInfo
    data modify storage inv_gui:util in.map set from storage inv_gui:core LocalItemInfoMap
    function inv_gui:util/map/set

# LocalItemInfoMapに上書き
    data modify storage inv_gui:core LocalItemInfoMap set from storage inv_gui:util out.map
    function inv_gui:util/cleanup


# Geçici veriyi temizle.
    data remove storage inv_gui:temp ItemInfo
