#> inv_gui:core/handler/on_container_open/ender_chest/_
#
# エンダーチェストを開いた時に呼び出される
#
# @within function inv_gui:core/emitter/check_container_open/ender_chest

# OhMyDatに開いているチェストの種類を設定
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.CurrentMenuType set value "EnderChest"


## isInCallback bayrağını true olarak işaretle.
    function inv_gui:core/common/is_in_callback/set


# Callback: olayı dinleyiciye ilet.
    function #inv_gui:handler/on_open/ender_chest


## isInCallback bayrağını temizle.
    function inv_gui:core/common/is_in_callback/reset
