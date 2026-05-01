#> inv_gui:util/map/core/set/_
#
# @input
#   storage inv_gui:util in
#       key: any
#       value: any
#       map?: Map
#
# @output
#   storage inv_gui:util out
#       map: Map
#
# @within function inv_gui:util/map/set

# 対象のMapが指定されている -> Mapを追加・更新
    execute if data storage inv_gui:util in.map run function inv_gui:util/map/core/set/update_map/_

# 対象のMapが指定されていない -> Mapを作成
    execute unless data storage inv_gui:util in.map run function inv_gui:util/map/core/set/create_map/_

# Geçici veriyi temizle.
    data remove storage inv_gui:util in
