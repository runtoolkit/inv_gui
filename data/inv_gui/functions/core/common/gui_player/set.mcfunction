#> inv_gui:core/common/gui_player/set
#
# Assign InvGui.Player tag to the player opening the executor's chest minecart
#
# @within function inv_gui:core/**

#>
# @private
    #declare tag InvGui.this

# Identify the open chest minecart
    tag @s add InvGui.this
    execute as @a if score @s InvGui.Id = @e[type=minecraft:chest_minecart, tag=InvGui.this, limit=1] InvGui.Id run tag @s add InvGui.Player
    tag @s remove InvGui.this
