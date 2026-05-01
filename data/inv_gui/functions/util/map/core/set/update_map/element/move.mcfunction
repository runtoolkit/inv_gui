#> inv_gui:util/map/core/set/update_map/element/move
# @within function
#   inv_gui:util/map/core/set/update_map/_
#   inv_gui:util/map/core/set/update_map/element/move

# 配列末尾に含まれるキーが一致するかテスト
    data modify storage inv_gui:util/temp Key set from storage inv_gui:util/temp TargetElements[-1].key
    execute store success storage inv_gui:util/temp Result byte 1.0 run data modify storage inv_gui:util/temp Key set from storage inv_gui:util in.key

# キーが不一致 -> 配列末尾の要素を別のデータに移動
    execute if data storage inv_gui:util/temp {Result:true} run data modify storage inv_gui:util/temp DeletedElements append from storage inv_gui:util/temp TargetElements[-1]
    execute if data storage inv_gui:util/temp {Result:true} run data remove storage inv_gui:util/temp TargetElements[-1]

# キーが一致するか、すべての要素を探索するまで再帰
    execute if data storage inv_gui:util/temp {Result:true} if data storage inv_gui:util/temp TargetElements[-1] run function inv_gui:util/map/core/set/update_map/element/move
