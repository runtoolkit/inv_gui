#> inv_gui:core/handler/on_container_open/chest_minecart/filter/4
# @within function inv_gui:core/handler/on_container_open/chest_minecart/filter/5

execute if entity @a[tag=Inv GUI.this, advancements={inv_gui:on_container_open={4-0=true}}] if entity @s[tag=Inv GUI.Filter.4-0] run function inv_gui:core/handler/on_container_open/chest_minecart/filter/3
execute if entity @a[tag=Inv GUI.this, advancements={inv_gui:on_container_open={4-1=true}}] if entity @s[tag=Inv GUI.Filter.4-1] run function inv_gui:core/handler/on_container_open/chest_minecart/filter/3
