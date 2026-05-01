#> inv_gui:core/common/api/build/create_menu/set_item/_
#
# アイテムを配置する
#
# @input
#   storage inv_gui:temp/build
#       Slot: byte
#           配置するアイテムのスロット
#       Content: string
#           配置するアイテムのキー
#
# @within function inv_gui:core/common/api/build/create_menu/loop

# ItemInfoを取得
    data modify storage inv_gui:temp Key set from storage inv_gui:temp Content
    function inv_gui:core/common/api/build/create_menu/get_item_info/_

# ItemTypeごとの処理
    execute if data storage inv_gui:temp ItemInfo{ItemType:"Normal"} run function inv_gui:core/common/api/build/create_menu/set_item/item_type/normal/_
    execute if data storage inv_gui:temp ItemInfo{ItemType:"Button"} run function inv_gui:core/common/api/build/create_menu/set_item/item_type/button/_
    execute if data storage inv_gui:temp ItemInfo{ItemType:"Variable"} run function inv_gui:core/common/api/build/create_menu/set_item/item_type/variable/_
