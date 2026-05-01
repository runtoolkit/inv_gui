#> inv_gui:core/handler/on_container_close/ender_chest
#
# エンダーチェストを閉じた時に呼び出される
#
# @within function inv_gui:core/emitter/check_container_close/ender_chest

## isInCallback bayrağını true olarak işaretle.
    function inv_gui:core/common/is_in_callback/set


# Callback: olayı dinleyiciye ilet.の戻り値を設定
    data modify storage inv_gui:temp CurrentContents set from entity @s EnderItems
    data remove storage inv_gui:temp CurrentContents[{tag:{InvGui:{isButton:true}}}]

# Callback: olayı dinleyiciye ilet.
    data modify storage inv_gui: callback.otherItems set from storage inv_gui:temp CurrentContents
    function #inv_gui:handler/on_close/ender_chest

# Geçici veriyi temizle.
    data remove storage inv_gui: callback
    data remove storage inv_gui:temp CurrentContents


## isInCallback bayrağını temizle.
    function inv_gui:core/common/is_in_callback/reset


# OhMyDatのメニューの情報を削除
    function #oh_my_dat:please
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.MenuId
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.Contents
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.CurrentMenuType
