#> inv_gui:core/handler/on_select/menu_type/chest_minecart/_
# @within function inv_gui:core/handler/on_select/_

## InvGui.Target を設定
    function inv_gui:core/common/gui_target/set


# メニューの情報を取得
    execute as @e[type=minecraft:chest_minecart, tag=InvGui.Target] run function #oh_my_dat:please
    data modify storage inv_gui:temp MenuId set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.MenuId
    data modify storage inv_gui:temp Contents set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.Contents
    data modify storage inv_gui:temp CurrentContents set from entity @e[type=minecraft:chest_minecart, tag=InvGui.Target, limit=1] Items

# 変更されたスロットのアイテムを取得
    function inv_gui:core/handler/on_select/get_changed_slot

# 通常アイテムを取得
    data remove storage inv_gui:temp CurrentContents[{tag:{InvGui:{isButton:true}}}]

# Callback: olayı dinleyiciye ilet.
    function inv_gui:core/handler/on_select/menu_type/chest_minecart/callback

# Geçici veriyi temizle.
    data remove storage inv_gui:temp MenuId
    data remove storage inv_gui:temp Contents
    data remove storage inv_gui:temp CurrentContents
    data remove storage inv_gui:temp Item


## InvGui.Target を削除
    function inv_gui:core/common/gui_target/reset
