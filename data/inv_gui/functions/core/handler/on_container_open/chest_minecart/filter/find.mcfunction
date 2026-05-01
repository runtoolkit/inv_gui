#> inv_gui:datacore/handler/on_container_open/chest_minecart/filter/find
# @within function inv_gui:datacore/handler/on_container_open/chest_minecart/_

#>
# @within function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/**
    #declare tag InvGui.this

# Search for opened chest minecart
    tag @s add InvGui.this
    execute as @e[type=minecraft:chest_minecart, tag=InvGui.Entity, distance=..9.0] run function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/15
    tag @s remove InvGui.this
