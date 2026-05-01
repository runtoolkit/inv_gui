#> inv_gui:core/api/register_item/normal/register_local_item
# @within function inv_gui:core/api/register_item/normal/_

# Get item at slot to save to
    function inv_gui:core/common/api/register_item/get_slot_index

# Save item
    data modify storage inv_gui:datatemp TargetSlot set from storage inv_gui:datatemp Slot
    function inv_gui:core/common/api/register_item/save_item/_


# Compose LocalItemInfo
    data modify storage inv_gui:datatemp ItemInfo.ItemType set from storage inv_gui:datatemp ItemType
    data modify storage inv_gui:datatemp ItemInfo.Slot set from storage inv_gui:datatemp Slot

# Set in LocalItemInfoMap
    function inv_gui:core/common/api/register_item/set_local_map


# Clean up temporary data.
    data remove storage inv_gui:datatemp Slot
