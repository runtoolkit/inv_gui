#> inv_gui:core/handler/on_container_close/chest_minecart
#
# チェスト付きトロッコを閉じた時に呼び出される
#
# @within function inv_gui:core/emitter/check_container_close/chest_minecart

## isInCallback bayrağını true olarak işaretle.
    function inv_gui:core/common/is_in_callback/set

## InvGui.Target を設定
    function inv_gui:core/common/gui_target/set


# Callback: olayı dinleyiciye ilet.の戻り値を設定
    data modify storage inv_gui:temp CurrentContents set from entity @e[type=minecraft:chest_minecart, tag=InvGui.Target, limit=1] Items
    data remove storage inv_gui:temp CurrentContents[{tag:{InvGui:{isButton:true}}}]

# Callback: olayı dinleyiciye ilet.
    data modify storage inv_gui: callback.otherItems set from storage inv_gui:temp CurrentContents
    function #inv_gui:handler/on_close/chest_minecart

# Geçici veriyi temizle.
    data remove storage inv_gui: callback
    data remove storage inv_gui:temp CurrentContents


## InvGui.Target を削除
    function inv_gui:core/common/gui_target/reset

## isInCallback bayrağını temizle.
    function inv_gui:core/common/is_in_callback/reset


# OhMyDatのメニューの情報を削除
    function #oh_my_dat:please
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.CurrentMenuType

# InvGui.Id を削除
    scoreboard players reset @s InvGui.Id
