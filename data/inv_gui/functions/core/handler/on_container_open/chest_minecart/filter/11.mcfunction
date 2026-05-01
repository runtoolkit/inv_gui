#> inv_gui:datacore/handler/on_container_open/chest_minecart/filter/11
# @within function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/12

execute if entity @a[tag=InvGui.this, advancements={inv_gui:dataon_container_open={11-0=true}}] if entity @s[tag=InvGui.Filter.11-0] run function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/10
execute if entity @a[tag=InvGui.this, advancements={inv_gui:dataon_container_open={11-1=true}}] if entity @s[tag=InvGui.Filter.11-1] run function inv_gui:datacore/handler/on_container_open/chest_minecart/filter/10
