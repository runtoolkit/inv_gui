#> inv_gui:core/emitter/check_container_close/ender_chest
#
# Fires the Ender Chest close as an event.
#
# @within tag/function close_detector:on_closed

# Closed chest is Ender Chest → fire event
    execute if predicate open:ender_chest run function inv_gui:core/handler/on_container_close/ender_chest
