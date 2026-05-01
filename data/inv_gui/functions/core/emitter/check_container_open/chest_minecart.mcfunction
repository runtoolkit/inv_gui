#> inv_gui:datacore/emitter/check_container_open/chest_minecart
#
# Fires the Chest Minecart open as an event.
#
# @within advancement inv_gui:dataon_container_open

# Fire event
    function inv_gui:datacore/handler/on_container_open/chest_minecart/_

# Clean up temporary data.
    advancement revoke @s only inv_gui:dataon_container_open
