#> inv_gui:util/map/core/get/search
# @within function
#   inv_gui:util/map/core/get/_
#   inv_gui:util/map/core/get/search

# 配列末尾に含まれるキーが一致するかテスト
    data modify storage inv_gui:util/temp Key set from storage inv_gui:util in.map[-1].key
    execute store success storage inv_gui:util/temp Result byte 1.0 run data modify storage inv_gui:util/temp Key set from storage inv_gui:util in.key

# キーが一致 -> 配列末尾の要素の値を返す
    execute if data storage inv_gui:util/temp {Result:false} run data modify storage inv_gui:util out.value set from storage inv_gui:util in.map[-1].value

# キーが不一致 -> 配列末尾の要素を削除
    execute if data storage inv_gui:util/temp {Result:true} run data remove storage inv_gui:util in.map[-1]

# キーが一致するか、すべての要素を探索するまで再帰
    execute if data storage inv_gui:util/temp {Result:true} if data storage inv_gui:util in.map[-1] run function inv_gui:util/map/core/get/search
