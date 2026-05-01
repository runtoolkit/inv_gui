#> inv_gui:core/handler/on_container_open/chest_minecart/filter/found
# @within function inv_gui:core/handler/on_container_open/chest_minecart/filter/0

## InvGui.Target を設定
    tag @s add InvGui.Target


# 開いたプレイヤーに自身のSketch.Idをコピー
    scoreboard players operation @a[tag=InvGui.this] InvGui.Id = @s InvGui.Id
