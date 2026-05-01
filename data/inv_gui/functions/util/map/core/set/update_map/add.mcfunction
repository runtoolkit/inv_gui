#> inv_gui:util/map/core/set/update_map/add
# @within function inv_gui:util/map/core/set/update_map/_

# キーと値の要素を作成
    data modify storage inv_gui:util/temp Element.key set from storage inv_gui:util in.key
    data modify storage inv_gui:util/temp Element.value set from storage inv_gui:util in.value

# 追加した要素を含むMapを返す
    data modify storage inv_gui:util out.map set from storage inv_gui:util in.map
    data modify storage inv_gui:util out.map append from storage inv_gui:util/temp Element

# Geçici veriyi temizle.
    data remove storage inv_gui:util/temp Element
