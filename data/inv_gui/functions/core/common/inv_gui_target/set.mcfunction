#> inv_gui:core/common/inv_gui_target/set
#
# Set Inv GUI.Target tag on the chest minecart opened by the executor's player
#
# @within function inv_gui:core/**

#>
# @private
    #declare tag Inv GUI.this

# Identify the opened chest minecart
    tag @s add Inv GUI.this
    execute as @e[type=minecraft:chest_minecart, tag=Inv GUI.Entity] if score @s Inv GUI.Id = @a[tag=Inv GUI.this, limit=1] Inv GUI.Id run tag @s add Inv GUI.Target
    tag @s remove Inv GUI.this
