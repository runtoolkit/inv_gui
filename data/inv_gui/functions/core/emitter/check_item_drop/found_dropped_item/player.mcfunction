#> inv_gui:core/emitter/check_item_drop/found_dropped_item/player
# @within function inv_gui:core/emitter/check_item_drop/find_dropped_item/_

# Fire event
    function inv_gui:core/handler/on_item_drop/_

# Clean up temporary data.
    scoreboard players remove @s InvGui.Drop 1
