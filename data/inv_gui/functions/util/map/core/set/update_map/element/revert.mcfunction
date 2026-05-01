#> inv_gui:util/map/core/set/update_map/element/revert
# @within function
#   inv_gui:util/map/core/set/update_map/update
#   inv_gui:util/map/core/set/update_map/element/revert

# 配列末尾の要素を末尾に追加
    data modify storage inv_gui:util/temp TargetElements append from storage inv_gui:util/temp DeletedElements[-1]
    data remove storage inv_gui:util/temp DeletedElements[-1]

# すべての要素を戻すまで再帰
    execute if data storage inv_gui:util/temp DeletedElements[-1] run function inv_gui:util/map/core/set/update_map/element/revert
