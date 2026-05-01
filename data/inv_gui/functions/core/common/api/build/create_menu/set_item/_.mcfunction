#> inv_gui:datacore/common/api/build/create_menu/set_item/_
#
# Place item
#
# @input
#   storage inv_gui:datatemp/build
#       Slot: byte
#           Slot of the item to place
#       Content: string
#           Key of the item to place
#
# @within function inv_gui:datacore/common/api/build/create_menu/loop

# Get ItemInfo
    data modify storage inv_gui:datatemp Key set from storage inv_gui:datatemp Content
    function inv_gui:datacore/common/api/build/create_menu/get_item_info/_

# Process by ItemType
    execute if data storage inv_gui:datatemp ItemInfo{ItemType:"Normal"} run function inv_gui:datacore/common/api/build/create_menu/set_item/item_type/normal/_
    execute if data storage inv_gui:datatemp ItemInfo{ItemType:"Button"} run function inv_gui:datacore/common/api/build/create_menu/set_item/item_type/button/_
    execute if data storage inv_gui:datatemp ItemInfo{ItemType:"Variable"} run function inv_gui:datacore/common/api/build/create_menu/set_item/item_type/variable/_
