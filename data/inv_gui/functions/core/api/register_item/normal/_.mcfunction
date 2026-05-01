#> inv_gui:core/api/register_item/normal/_
#
# @input
#   vector 10000 0 10000
#       container.0
#   storage inv_gui: in
#       key: string
#       isGlobal?: boolean
#
# @within function inv_gui:api/register_item/normal

# デフォルト引数を設定
    execute unless data storage inv_gui: in.isGlobal run data modify storage inv_gui: in.isGlobal set value false


# アイテムの種類を設定
    data modify storage inv_gui:temp ItemType set value "Normal"
    item modify block 10000 0 10000 container.0 inv_gui:register_item/normal

# それぞれのMapに追加
    execute if data storage inv_gui: in{isGlobal:0b} run function inv_gui:core/api/register_item/normal/register_local_item
    execute if data storage inv_gui: in{isGlobal:1b} run function inv_gui:core/api/register_item/normal/register_global_item


# Geçici veriyi temizle.
    item replace block 10000 0 10000 container.0 with minecraft:air
    data remove storage inv_gui:temp ItemType
    data remove storage inv_gui: in
