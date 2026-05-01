#> inv_gui:core/common/inv_gui_target/reset
#
# Remove Inv GUI.Target tag
#
# @within function inv_gui:core/**

# Remove tag
    tag @e[type=minecraft:chest_minecart, tag=Inv GUI.Target] remove Inv GUI.Target
