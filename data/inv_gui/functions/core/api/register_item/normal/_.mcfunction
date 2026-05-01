#> inv_gui:datacore/api/register_item/normal/_
#
# @input
#   vector 10000 0 10000
#       container.0
#   storage inv_gui:data in
#       key: string
#       isGlobal?: boolean
#
# @within function inv_gui:dataapi/register_item/normal

# Set default arguments
    execute unless data storage inv_gui:data in.isGlobal run data modify storage inv_gui:data in.isGlobal set value false


# Set item type
    data modify storage inv_gui:datatemp ItemType set value "Normal"
    item modify block 10000 0 10000 container.0 inv_gui:dataregister_item/normal

# Add to the respective map
    execute if data storage inv_gui:data in{isGlobal:0b} run function inv_gui:datacore/api/register_item/normal/register_local_item
    execute if data storage inv_gui:data in{isGlobal:1b} run function inv_gui:datacore/api/register_item/normal/register_global_item


# Clean up temporary data.
    item replace block 10000 0 10000 container.0 with minecraft:air
    data remove storage inv_gui:datatemp ItemType
    data remove storage inv_gui:data in
