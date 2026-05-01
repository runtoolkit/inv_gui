#> inv_gui:core/api/register_item/variable/_
#
# @input
#   storage inv_gui: in
#       key: string
#       isGlobal?: boolean
#
# @within function inv_gui:api/register_item/variable

# デフォルト引数を指定
    execute unless data storage inv_gui: in.isGlobal run data modify storage inv_gui: in.isGlobal set value false


# アイテムの種類を設定
    data modify storage inv_gui:temp ItemType set value "Variable"

# それぞれのMapに追加
    execute if data storage inv_gui: in{isGlobal:0b} run function inv_gui:core/api/register_item/variable/register_local_item
    execute if data storage inv_gui: in{isGlobal:1b} run function inv_gui:core/api/register_item/variable/register_global_item


# Geçici veriyi temizle.
    data remove storage inv_gui:temp ItemType
    data remove storage inv_gui: in
