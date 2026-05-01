#> inv_gui:core/handler/on_container_open/chest_minecart/filter/find
# @within function inv_gui:core/handler/on_container_open/chest_minecart/_

#>
# @within function inv_gui:core/handler/on_container_open/chest_minecart/filter/**
    #declare tag Inv GUI.this

# Search for opened chest minecart
    tag @s add Inv GUI.this
    execute as @e[type=minecraft:chest_minecart, tag=Inv GUI.Entity, distance=..9.0] run function inv_gui:core/handler/on_container_open/chest_minecart/filter/15
    tag @s remove Inv GUI.this
