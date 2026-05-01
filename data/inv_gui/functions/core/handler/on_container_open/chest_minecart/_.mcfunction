#> inv_gui:core/handler/on_container_open/chest_minecart/_
#
# チェスト付きトロッコを開いた時に呼び出される
#
# @within function inv_gui:core/emitter/check_container_open/chest_minecart

# OhMyDatに開いているチェストの種類を設定
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.CurrentMenuType set value "Minecart"


## isInCallback bayrağını true olarak işaretle.
    function inv_gui:core/common/is_in_callback/set

## 開いたチェスト付きトロッコを探索
    function inv_gui:core/handler/on_container_open/chest_minecart/filter/find


# Callback: olayı dinleyiciye ilet.
    function #inv_gui:handler/on_open/chest_minecart


## InvGui.Target を削除
    function inv_gui:core/common/gui_target/reset

## isInCallback bayrağını temizle.
    function inv_gui:core/common/is_in_callback/reset
