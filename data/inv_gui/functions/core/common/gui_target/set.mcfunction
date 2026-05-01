#> inv_gui:core/common/gui_target/set
#
# 実行者のプレイヤーが開いているチェスト付きトロッコに、 InvGui.Target タグを設定する
#
# @within function inv_gui:core/**

#>
# @private
    #declare tag InvGui.this

# 開いているチェスト付きトロッコを特定
    tag @s add InvGui.this
    execute as @e[type=minecraft:chest_minecart, tag=InvGui.Entity] if score @s InvGui.Id = @a[tag=InvGui.this, limit=1] InvGui.Id run tag @s add InvGui.Target
    tag @s remove InvGui.this
