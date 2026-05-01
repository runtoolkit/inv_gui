#> inv_gui:datacore/handler/on_container_open/chest_minecart/filter/8
# @within function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/9

execute if entity @a[tag=InvGui.this, advancements={inv_gui:dataon_container_open={8-0=true}}] if entity @s[tag=InvGui.Filter.8-0] run function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/7
execute if entity @a[tag=InvGui.this, advancements={inv_gui:dataon_container_open={8-1=true}}] if entity @s[tag=InvGui.Filter.8-1] run function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/7
