#> inv_gui:core/emitter/check_item_click/_
#
# Fire item click as event
#
# @within function inv_gui:core/tick
#
# Note: Using @s Inv GUI score instead of storage (per-tick, per-player speedup)

# Check item click (save result to score)
    execute store success score @s Inv GUI run clear @s #inv_gui:all{Inv GUI:{isButton:true}}

# Item is being clicked -> Fire event
    execute if score @s Inv GUI matches 1 run function inv_gui:core/handler/on_item_click/_

# Reset
    scoreboard players reset @s Inv GUI
