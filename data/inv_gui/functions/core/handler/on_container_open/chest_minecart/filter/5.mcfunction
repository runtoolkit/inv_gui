#> inv_gui:core/handler/on_container_open/chest_minecart/filter/5
# @within function inv_gui:core/handler/on_container_open/chest_minecart/filter/6

execute if entity @a[tag=Inv GUI.this, advancements={inv_gui:on_container_open={5-0=true}}] if entity @s[tag=Inv GUI.Filter.5-0] run function inv_gui:core/handler/on_container_open/chest_minecart/filter/4
execute if entity @a[tag=Inv GUI.this, advancements={inv_gui:on_container_open={5-1=true}}] if entity @s[tag=Inv GUI.Filter.5-1] run function inv_gui:core/handler/on_container_open/chest_minecart/filter/4
