#> inv_gui:core/common/gui_target/reset
#
# InvGui.Target タグを削除する
#
# @within function inv_gui:core/**

# タグを削除
    tag @e[type=minecraft:chest_minecart, tag=InvGui.Target] remove InvGui.Target
