#> inv_gui:util/map/core/has/_
#
# @input
#   storage inv_gui:util in
#       key: any
#       map: Map
#
# @output
#   storage inv_gui:util out
#       contains: boolean
#
# @within function inv_gui:util/map/has

# 戻り値をSıfırlama / başlatma.
    data modify storage inv_gui:util out.contains set value false

# 指定したキーに対する要素が含まれているか探索
    function inv_gui:util/map/core/has/search

# Geçici veriyi temizle.
    data remove storage inv_gui:util/temp Key
    data remove storage inv_gui:util/temp Result
    data remove storage inv_gui:util in
