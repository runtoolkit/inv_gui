#> inv_gui:util/map/get
#
# 指定されたキーから値を返します
#
# @input
#   storage inv_gui:util in
#       key: any
#           取得する要素のキー
#       map: Map
#           対象のMap
#
# @output
#   storage inv_gui:util out
#       value: any
#           取得した値
#       contains: boolean
#           指定されたキーに対する要素が含まれているかどうか
#
# @within * inv_gui:**

function inv_gui:util/map/core/get/_
