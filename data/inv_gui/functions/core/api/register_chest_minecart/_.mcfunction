#> inv_gui:datacore/api/register_chest_minecart/_
# @within function inv_gui:dataapi/register_chest_minecart

# Executor not registered → register executor
    execute if entity @s[type=minecraft:chest_minecart, tag=!InvGui.Entity] run function inv_gui:datacore/api/register_chest_minecart/register
