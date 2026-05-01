#> inv_gui:core/common/inv_gui_player/set
#
# Set Inv GUI.Player tag on the player who opened the executor's chest minecart
#
# @within function inv_gui:core/**

#>
# @private
    #declare tag Inv GUI.this

# Identify the opened chest minecart
    tag @s add Inv GUI.this
    execute as @a if score @s Inv GUI.Id = @e[type=minecraft:chest_minecart, tag=Inv GUI.this, limit=1] Inv GUI.Id run tag @s add Inv GUI.Player
    tag @s remove Inv GUI.this
