#> inv_gui:datacore/handler/on_item_click/_
#
# Called when an item is clicked.
#
# @within function inv_gui:datacore/emitter/check_item_click/_

# Fire event
    data modify storage inv_gui:datatemp SelectionType set value "CLICK"
    function inv_gui:datacore/handler/on_select/_
