#> inv_gui:datacore/handler/on_container_open/chest_minecart/filter/10
# @within function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/11

execute if entity @a[tag=InvGui.this, advancements={inv_gui:dataon_container_open={10-0=true}}] if entity @s[tag=InvGui.Filter.10-0] run function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/9
execute if entity @a[tag=InvGui.this, advancements={inv_gui:dataon_container_open={10-1=true}}] if entity @s[tag=InvGui.Filter.10-1] run function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/9
