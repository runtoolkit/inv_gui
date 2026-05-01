#> inv_gui:datacore/handler/on_container_open/chest_minecart/filter/1
# @within function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/2

execute if entity @a[tag=InvGui.this, advancements={inv_gui:dataon_container_open={1-0=true}}] if entity @s[tag=InvGui.Filter.1-0] run function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/0
execute if entity @a[tag=InvGui.this, advancements={inv_gui:dataon_container_open={1-1=true}}] if entity @s[tag=InvGui.Filter.1-1] run function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/0
