#> inv_gui:datacore/common/api/build/create_menu/set_item/item_type/button/_
# @within function inv_gui:datacore/common/api/build/create_menu/set_item/_

# Retrieve the corresponding item
    execute if data storage inv_gui:datatemp {isGlobalItemInfo:0b} run data modify storage inv_gui:datatemp TargetSlot set from storage inv_gui:datatemp ItemInfo.Slot
    execute if data storage inv_gui:datatemp {isGlobalItemInfo:0b} run function inv_gui:datacore/common/api/build/get_item/_
    execute if data storage inv_gui:datatemp {isGlobalItemInfo:1b} run data modify block 10000 0 10000 Items append from storage inv_gui:datatemp ItemInfo.Item

# Place the retrieved item
    data modify storage inv_gui:datatemp TargetSlot set from storage inv_gui:datatemp Slot
    function inv_gui:datacore/common/api/build/place_item/_
