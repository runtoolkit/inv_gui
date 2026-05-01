#> inv_gui:core/api/register_item/normal/register_local_item
# @within function inv_gui:core/api/register_item/normal/_

# アイテムを保存するスロットを取得
    function inv_gui:core/common/api/register_item/get_slot_index

# アイテムを保存
    data modify storage inv_gui:temp TargetSlot set from storage inv_gui:temp Slot
    function inv_gui:core/common/api/register_item/save_item/_


# LocalItemInfoを構成
    data modify storage inv_gui:temp ItemInfo.ItemType set from storage inv_gui:temp ItemType
    data modify storage inv_gui:temp ItemInfo.Slot set from storage inv_gui:temp Slot

# LocalItemInfoMapに設定
    function inv_gui:core/common/api/register_item/set_local_map


# Geçici veriyi temizle.
    data remove storage inv_gui:temp Slot
