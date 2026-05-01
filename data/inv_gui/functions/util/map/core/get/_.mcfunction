#> inv_gui:util/map/core/get/_
#
# @input
#   storage inv_gui:util in
#       map: Map
#       key: any
#
# @output
#   storage inv_gui:util out
#       value: any
#       contains: boolean
#
# @within function inv_gui:util/map/get

# 戻り値をSıfırlama / başlatma.
    data modify storage inv_gui:util out.contains set value false

# 指定したキーの要素を探索
    function inv_gui:util/map/core/get/search

# 配列に要素が残っているなら、指定したキーに対する要素が含まれている
    execute if data storage inv_gui:util in.map[-1] run data modify storage inv_gui:util out.contains set value true

# Geçici veriyi temizle.
    data remove storage inv_gui:util/temp Key
    data remove storage inv_gui:util/temp Result
    data remove storage inv_gui:util in
