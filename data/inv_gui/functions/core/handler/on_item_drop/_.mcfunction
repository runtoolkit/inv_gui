#> inv_gui:core/handler/on_item_drop/_
#
# Called when an item is dropped.
#
# @within function inv_gui:core/emitter/check_item_drop/found_dropped_item/player

# Fire event
    data modify storage inv_gui:datatemp SelectionType set value "DROP"
    function inv_gui:core/handler/on_select/_
