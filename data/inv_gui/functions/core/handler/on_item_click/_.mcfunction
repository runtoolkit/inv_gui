#> inv_gui:core/handler/on_item_click/_
#
# アイテムクリック時に呼び出される
#
# @within function inv_gui:core/emitter/check_item_click/_

# イベントを発火
    data modify storage inv_gui:temp SelectionType set value "CLICK"
    function inv_gui:core/handler/on_select/_
