#> inv_gui:util/map/core/set/update_map/update
# @within function inv_gui:util/map/core/set/update_map/_

# 指定されたキーに対する値を更新
    data modify storage inv_gui:util/temp TargetElements[-1].value set from storage inv_gui:util in.value

# 削除した要素を戻す
    function inv_gui:util/map/core/set/update_map/element/revert

# 更新した要素を含むMapを返す
    data modify storage inv_gui:util out.map set from storage inv_gui:util/temp TargetElements
