#> inv_gui:core/handler/on_select/menu_type/ender_chest/_
# @within function inv_gui:core/handler/on_select/_

# メニューの情報を取得
    function #oh_my_dat:please
    data modify storage inv_gui:temp MenuId set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.MenuId
    data modify storage inv_gui:temp Contents set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.Contents
    data modify storage inv_gui:temp CurrentContents set from entity @s EnderItems

# 変更されたスロットのアイテムを取得
    function inv_gui:core/handler/on_select/get_changed_slot

# 通常アイテムを取得
    data remove storage inv_gui:temp CurrentContents[{tag:{InvGui:{isButton:true}}}]

# Callback: olayı dinleyiciye ilet.
    function inv_gui:core/handler/on_select/menu_type/ender_chest/callback

# Geçici veriyi temizle.
    data remove storage inv_gui:temp MenuId
    data remove storage inv_gui:temp Contents
    data remove storage inv_gui:temp CurrentContents
    data remove storage inv_gui:temp Item
