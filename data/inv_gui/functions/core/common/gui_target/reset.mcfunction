#> inv_gui:datacore/common/gui_target/reset
#
# Remove InvGui.Target tag
#
# @within function inv_gui:datacore/**

# Remove tag
    tag @e[type=minecraft:chest_minecart, tag=InvGui.Target] remove InvGui.Target
