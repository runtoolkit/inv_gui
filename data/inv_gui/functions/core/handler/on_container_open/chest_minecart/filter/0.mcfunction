#> inv_gui:datacore/handler/on_container_open/chest_minecart/filter/0
# @within function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/1

execute if entity @a[tag=InvGui.this, advancements={inv_gui:dataon_container_open={0-0=true}}] if entity @s[tag=InvGui.Filter.0-0] run function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/found
execute if entity @a[tag=InvGui.this, advancements={inv_gui:dataon_container_open={0-1=true}}] if entity @s[tag=InvGui.Filter.0-1] run function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/found
