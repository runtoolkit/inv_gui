#> inv_gui:datacore/handler/on_container_open/chest_minecart/filter/found
# @within function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/0

## Assign InvGui.Target tag
    tag @s add InvGui.Target


# Copy own InvGui.Id to the player that opened it
    scoreboard players operation @a[tag=InvGui.this] InvGui.Id = @s InvGui.Id
