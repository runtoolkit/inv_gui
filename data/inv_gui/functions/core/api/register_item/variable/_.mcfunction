#> inv_gui:core/api/register_item/variable/_
#
# @input
#   storage inv_gui:data in
#       key: string
#       isGlobal?: boolean
#
# @within function inv_gui:api/register_item/variable

# Set default arguments
    execute unless data storage inv_gui:data in.isGlobal run data modify storage inv_gui:data in.isGlobal set value false


# Set item type
    data modify storage inv_gui:datatemp ItemType set value "Variable"

# Add to the respective map
    execute if data storage inv_gui:data in{isGlobal:0b} run function inv_gui:core/api/register_item/variable/register_local_item
    execute if data storage inv_gui:data in{isGlobal:1b} run function inv_gui:core/api/register_item/variable/register_global_item


# Clean up temporary data.
    data remove storage inv_gui:datatemp ItemType
    data remove storage inv_gui:data in
