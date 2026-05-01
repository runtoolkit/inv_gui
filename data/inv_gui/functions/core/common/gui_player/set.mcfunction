#> inv_gui:core/common/gui_player/set
#
# 実行者のチェスト付きトロッコを開いているプレイヤーに、 InvGui.Player タグを設定する
#
# @within function inv_gui:core/**

#>
# @private
    #declare tag InvGui.this

# 開いているチェスト付きトロッコを特定
    tag @s add InvGui.this
    execute as @a if score @s InvGui.Id = @e[type=minecraft:chest_minecart, tag=InvGui.this, limit=1] InvGui.Id run tag @s add InvGui.Player
    tag @s remove InvGui.this
