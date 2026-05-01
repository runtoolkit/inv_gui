#> inv_gui:core/handler/on_container_open/chest_minecart/filter/9
# @within function inv_gui:core/handler/on_container_open/chest_minecart/filter/10

execute if entity @a[tag=InvGui.this, advancements={inv_gui:on_container_open={9-0=true}}] if entity @s[tag=InvGui.Filter.9-0] run function inv_gui:core/handler/on_container_open/chest_minecart/filter/8
execute if entity @a[tag=InvGui.this, advancements={inv_gui:on_container_open={9-1=true}}] if entity @s[tag=InvGui.Filter.9-1] run function inv_gui:core/handler/on_container_open/chest_minecart/filter/8
