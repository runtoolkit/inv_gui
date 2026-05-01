#> inv_gui:datacore/common/api/build/place_item/b-3/5
# @within function inv_gui:datacore/common/api/build/place_item/b-2/2

execute if score $TargetSlot InvGui matches 18..19 run function inv_gui:datacore/common/api/build/place_item/b-4/8
execute if score $TargetSlot InvGui matches 20 run item replace block ~ ~ ~ container.20 from block 10000 0 10000 container.0
