#> inv_gui:core/load
#
# Runs when the datapack is loaded (server start / /reload).
# Initializes scoreboards and storage; existing data is preserved.
#
# @within tag/function minecraft:load

# -- Scoreboard setup --
# If the objective already exists, "add" silently fails and existing scores are preserved.
    scoreboard objectives add InvGui dummy
    scoreboard objectives add InvGui.Id dummy
    scoreboard objectives add InvGui.Drop minecraft.used:minecraft.carrot_on_a_stick

# -- Set version to v1.0.0 if not yet defined --
    execute unless data storage inv_gui:data Version run data modify storage inv_gui:data Version set value "1.0.0"

# -- Load notification --
# Sent to all players.
    tellraw @a ["",{"text":"[","color":"dark_aqua"},{"text":"inv_gui","color":"aqua","bold":true},{"text":"] ","color":"dark_aqua"},{"text":"v1.0.0 loaded.","color":"white"}]
