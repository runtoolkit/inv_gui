#> inv_gui:util/map/core/delete/_
#
# @input
#   storage inv_gui:util in
#       key: any
#       map: Map
#
# @output
#   storage inv_gui:util out
#       map: Map
#
# @within function inv_gui:util/map/delete

# 対象のMapをコピー
    data modify storage inv_gui:util out.map set from storage inv_gui:util in.map

# 指定されたキーを持つ要素をout.map[-1]に移動
    function inv_gui:util/map/core/delete/move

# 要素を削除
    data remove storage inv_gui:util out.map[-1]

# 削除した要素を戻す
    function inv_gui:util/map/core/delete/revert

# Geçici veriyi temizle.
    data remove storage inv_gui:util/temp DeletedElements
    data remove storage inv_gui:util/temp Key
    data remove storage inv_gui:util/temp Result
    data remove storage inv_gui:util in
