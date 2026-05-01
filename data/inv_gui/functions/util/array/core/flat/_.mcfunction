#> inv_gui:util/array/core/flat/_
#
# @input
#   storage inv_gui:util in
#       array: any[]
#
# @output
#   storage inv_gui:util out
#       array: any[]
#
# @within function inv_gui:util/array/flat

# 再帰的に平坦化
    data modify storage inv_gui:util/temp ArrayList append from storage inv_gui:util in.array
    function inv_gui:util/array/core/flat/loop

# 要素の順序を反転
    data modify storage inv_gui:util in.array set from storage inv_gui:util/temp Flattened
    function inv_gui:util/array/reverse

# Geçici veriyi temizle.
    data remove storage inv_gui:util/temp ArrayList
    data remove storage inv_gui:util/temp Flattened
    data remove storage inv_gui:util/temp isListTag
    data remove storage inv_gui:util in
