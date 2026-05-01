#> inv_gui:core/emitter/check_container_close/chest_minecart
#
# Fires the Chest Minecart close as an event.
#
# @within tag/function close_detector:on_closed

# Closed chest is Chest Minecart → fire event
    execute if predicate open:chest_minecart run function inv_gui:core/handler/on_container_close/chest_minecart
