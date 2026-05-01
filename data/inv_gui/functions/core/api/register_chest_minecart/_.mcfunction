#> inv_gui:core/api/register_chest_minecart/_
# @within function inv_gui:api/register_chest_minecart

# 実行者が未登録 -> 実行者を登録
    execute if entity @s[type=minecraft:chest_minecart, tag=!InvGui.Entity] run function inv_gui:core/api/register_chest_minecart/register
