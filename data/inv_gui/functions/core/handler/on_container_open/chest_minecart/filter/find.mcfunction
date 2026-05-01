#> inv_gui:core/handler/on_container_open/chest_minecart/filter/find
# @within function inv_gui:core/handler/on_container_open/chest_minecart/_

#>
# @within function inv_gui:core/handler/on_container_open/chest_minecart/filter/**
    #declare tag InvGui.this

# 開いたチェスト付きトロッコを探索
    tag @s add InvGui.this
    execute as @e[type=minecraft:chest_minecart, tag=InvGui.Entity, distance=..9.0] run function inv_gui:core/handler/on_container_open/chest_minecart/filter/15
    tag @s remove InvGui.this
