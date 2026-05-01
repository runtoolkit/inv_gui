#> inv_gui:core/common/gui_target/set
#
# Assign InvGui.Target tag to the chest minecart the player has open
#
# @within function inv_gui:core/**

#>
# @private
    #declare tag InvGui.this

# Identify the open chest minecart
    tag @s add InvGui.this
    execute as @e[type=minecraft:chest_minecart, tag=InvGui.Entity] if score @s InvGui.Id = @a[tag=InvGui.this, limit=1] InvGui.Id run tag @s add InvGui.Target
    tag @s remove InvGui.this
