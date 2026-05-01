#> inv_gui:core/common/api/build/create_menu/loop
# @within function
#   inv_gui:core/common/api/build/create_menu/_
#   inv_gui:core/common/api/build/create_menu/loop

# 配置するアイテムのスロットを設定
    execute store result storage inv_gui:temp Slot byte 1.0 run scoreboard players get $Slot InvGui

# 配置するアイテムのキーを設定
    data modify storage inv_gui:temp Content set from storage inv_gui:temp Contents[-1]
    data remove storage inv_gui:temp Contents[-1]

# アイテムを配置
    function inv_gui:core/common/api/build/create_menu/set_item/_


# 配置するアイテムのスロットを変更
    scoreboard players remove $Slot InvGui 1

# すべてのアイテムを配置するまで再帰
    execute if score $Slot InvGui matches 0.. run function inv_gui:core/common/api/build/create_menu/loop
