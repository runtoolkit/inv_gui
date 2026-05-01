#> inv_gui:core/api/register_chest_minecart/_
# @within function inv_gui:api/register_chest_minecart

# Executor is not registered -> Register executor
    execute if entity @s[type=minecraft:chest_minecart, tag=!Inv GUI.Entity] run function inv_gui:core/api/register_chest_minecart/register
