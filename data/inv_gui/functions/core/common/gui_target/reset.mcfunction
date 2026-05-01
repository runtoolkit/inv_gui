#> inv_gui:core/common/gui_target/reset
#
# Remove InvGui.Target tag
#
# @within function inv_gui:core/**

# Remove tag
    tag @e[type=minecraft:chest_minecart, tag=InvGui.Target] remove InvGui.Target
