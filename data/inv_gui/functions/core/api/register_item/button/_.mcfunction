#> inv_gui:core/api/register_item/button/_
#
# @input
#   vector 10000 0 10000
#       container.0
#   storage inv_gui:data in
#       key: string
#       listener?: any
#       isGlobal?: boolean
#
# @within function inv_gui:api/register_item/button

# Set default arguments
    execute unless data storage inv_gui:data in.isGlobal run data modify storage inv_gui:data in.isGlobal set value false


# Set item type
    data modify storage inv_gui:datatemp ItemType set value "Button"
    item modify block 10000 0 10000 container.0 inv_gui:dataregister_item/button
    item modify block 10000 0 10000 container.0 inv_gui:dataset_listener

# Add to the respective map
    execute if data storage inv_gui:data in{isGlobal:0b} run function inv_gui:core/api/register_item/button/register_local_item
    execute if data storage inv_gui:data in{isGlobal:1b} run function inv_gui:core/api/register_item/button/register_global_item


# Clean up temporary data.
    item replace block 10000 0 10000 container.0 with minecraft:air
    data remove storage inv_gui:datatemp ItemType
    data remove storage inv_gui:data in
