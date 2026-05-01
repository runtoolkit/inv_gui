#> inv_gui:core/common/api/build/create_menu/get_item_info/_
#
# 指定されたキーからItemInfoを返す
#
# @input
#   storage inv_gui:temp
#       Key: string
#           取得する要素のキー
#
# @output
#   storage inv_gui:temp
#       ItemInfo: ItemInfo
#           取得したItemInfo
#       isGlobalItemInfo: boolean
#           GlobalItemInfoかどうか
#
# @within function inv_gui:core/common/api/build/create_menu/set_item/_

# LocalItemInfoMapから取得
    function inv_gui:core/common/api/build/create_menu/get_item_info/from_local_map

# GlobalItemInfoMapから取得
    execute if data storage inv_gui:util out{contains:false} run function inv_gui:core/common/api/build/create_menu/get_item_info/from_global_map


# utilをSıfırlama / başlatma.
    function inv_gui:util/cleanup

# Geçici veriyi temizle.
    data remove storage inv_gui:temp Key
