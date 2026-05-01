#> inv_gui:datacore/api/register_chest_minecart/register
# @within function inv_gui:datacore/api/register_chest_minecart/_

#>
# @private
    #declare score_holder $TempIndex


# Register executor
    tag @s add InvGui.Entity

# Assign Index
    scoreboard players add $MinecartIndex InvGui 1
    execute if score $MinecartIndex InvGui matches 32768 run scoreboard players set $MinecartIndex InvGui 1
    scoreboard players operation $TempIndex InvGui = $MinecartIndex InvGui

    scoreboard players operation $TempIndex InvGui *= $65536 InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.15-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.15-1

    scoreboard players operation $TempIndex InvGui += $TempIndex InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.14-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.14-1

    scoreboard players operation $TempIndex InvGui += $TempIndex InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.13-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.13-1

    scoreboard players operation $TempIndex InvGui += $TempIndex InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.12-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.12-1

    scoreboard players operation $TempIndex InvGui += $TempIndex InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.11-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.11-1

    scoreboard players operation $TempIndex InvGui += $TempIndex InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.10-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.10-1

    scoreboard players operation $TempIndex InvGui += $TempIndex InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.9-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.9-1

    scoreboard players operation $TempIndex InvGui += $TempIndex InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.8-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.8-1

    scoreboard players operation $TempIndex InvGui += $TempIndex InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.7-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.7-1

    scoreboard players operation $TempIndex InvGui += $TempIndex InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.6-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.6-1

    scoreboard players operation $TempIndex InvGui += $TempIndex InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.5-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.5-1

    scoreboard players operation $TempIndex InvGui += $TempIndex InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.4-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.4-1

    scoreboard players operation $TempIndex InvGui += $TempIndex InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.3-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.3-1

    scoreboard players operation $TempIndex InvGui += $TempIndex InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.2-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.2-1

    scoreboard players operation $TempIndex InvGui += $TempIndex InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.1-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.1-1

    scoreboard players operation $TempIndex InvGui += $TempIndex InvGui
    execute if score $TempIndex InvGui matches 00.. run tag @s add InvGui.Filter.0-0
    execute if score $TempIndex InvGui matches ..-1 run tag @s add InvGui.Filter.0-1

# Assign Id
    scoreboard players operation @s InvGui.Id = $MinecartIndex InvGui


# Clean up temporary data.
    scoreboard players reset $TempIndex InvGui
