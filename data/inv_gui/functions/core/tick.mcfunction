#> inv_gui:core/tick
#
# Runs every game tick (20 times/second).
# Detects click and drop events.
#
# @within tag/function minecraft:tick

# Check item click: run click emitter for each player
    execute as @a run function inv_gui:core/emitter/check_item_click/_

# Check item drop: if any player has a drop score and a nearby item exists, trigger drop handler
    execute if entity @a[scores={InvGui.Drop=1..}, limit=1] as @a[scores={InvGui.Drop=1..}] at @s if entity @e[type=minecraft:item, distance=..5.0, limit=1] run function inv_gui:core/emitter/check_item_drop/_

# Reset drop score for next tick
    scoreboard players reset @a[scores={InvGui.Drop=-2147483648..2147483647}] InvGui.Drop
