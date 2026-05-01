#> inv_gui:util/map/core/set/update_map/_
# @within function inv_gui:util/map/core/set/_

# 対象のMapをコピー
    data modify storage inv_gui:util/temp TargetElements set from storage inv_gui:util in.map

# 指定されたキーを持つ要素をTargetElements[-1]に移動
    function inv_gui:util/map/core/set/update_map/element/move


# 指定したキーが発見された -> Mapを更新
    execute if data storage inv_gui:util/temp {Result:false} run function inv_gui:util/map/core/set/update_map/update

# 指定したキーが発見されなかった -> Mapに要素を追加
    execute if data storage inv_gui:util/temp {Result:true} run function inv_gui:util/map/core/set/update_map/add


# Geçici veriyi temizle.
    data remove storage inv_gui:util/temp TargetElements
    data remove storage inv_gui:util/temp DeletedElements
    data remove storage inv_gui:util/temp Key
    data remove storage inv_gui:util/temp Result
