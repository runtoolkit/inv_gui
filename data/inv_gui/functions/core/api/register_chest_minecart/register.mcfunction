#> inv_gui:core/api/register_chest_minecart/register
# @within function inv_gui:core/api/register_chest_minecart/_

#>
# @private
    #declare score_holder $TempIndex

# Register executor
    tag @s add Inv GUI.Entity

# Assign Index (1..32767)
    scoreboard players add $MinecartIndex Inv GUI 1
    execute if score $MinecartIndex Inv GUI matches 32768 run scoreboard players set $MinecartIndex Inv GUI 1

# Assign Id
    scoreboard players operation @s Inv GUI.Id = $MinecartIndex Inv GUI

# Set each bit of Index as Filter.N-{0|1} tag (macro loop: bit 15→0)
    scoreboard players operation $TempIndex Inv GUI = $MinecartIndex Inv GUI
    scoreboard players operation $TempIndex Inv GUI *= $65536 Inv GUI
    scoreboard players set $_rbit Inv GUI 15
    function inv_gui:core/api/register_chest_minecart/encode_loop

# Reset
    scoreboard players reset $TempIndex Inv GUI
    scoreboard players reset $_rbit Inv GUI
