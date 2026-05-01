#> inv_gui:core/emitter/check_container_open/ender_chest
#
# Fires the Ender Chest open as an event.
#
# @within tag/function close_detector:on_opened

# Opened chest is Ender Chest → fire event
    execute if predicate open:ender_chest run function inv_gui:core/handler/on_container_open/ender_chest/_
