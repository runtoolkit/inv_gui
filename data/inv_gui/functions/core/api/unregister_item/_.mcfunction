#> inv_gui:core/api/unregister_item/_
#
# @input
#   storage inv_gui: in
#       key: string
#
# @within function inv_gui:api/unregister_item

# Mapから削除
    data modify storage inv_gui:util in.key set from storage inv_gui: in.key
    data modify storage inv_gui:util in.map set from storage inv_gui:core GlobalItemInfoMap
    function inv_gui:util/map/delete

# GlobalItemInfoMapに上書き
    data modify storage inv_gui:core GlobalItemInfoMap set from storage inv_gui:util out.map
    function inv_gui:util/cleanup

# Geçici veriyi temizle.
    data remove storage inv_gui: in
