#> inv_gui:datacore/handler/on_container_open/chest_minecart/filter/2
# @within function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/3

execute if entity @a[tag=InvGui.this, advancements={inv_gui:dataon_container_open={2-0=true}}] if entity @s[tag=InvGui.Filter.2-0] run function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/1
execute if entity @a[tag=InvGui.this, advancements={inv_gui:dataon_container_open={2-1=true}}] if entity @s[tag=InvGui.Filter.2-1] run function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/1
