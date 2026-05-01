#> inv_gui:util/map/set
#
# 指定されたキーと値を持つ要素を追加・更新・作成します
#
# @input
#   storage inv_gui:util in
#       key: any
#           設定する要素のキー
#       value: any
#           設定する要素の値
#       map?: Map
#           追加・更新する対象のMap (任意)
#
# @output
#   storage inv_gui:util out
#       map: Map
#           設定した要素を含むMap
#
# @within * inv_gui:**

function inv_gui:util/map/core/set/_
