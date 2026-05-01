#> inv_gui:core/handler/on_container_open/chest_minecart/filter/found
# @within function inv_gui:core/handler/on_container_open/chest_minecart/filter/0

## Set Inv GUI.Target
    tag @s add Inv GUI.Target


# Copy own Inv GUI.Id to the player who opened
    scoreboard players operation @a[tag=Inv GUI.this] Inv GUI.Id = @s Inv GUI.Id
