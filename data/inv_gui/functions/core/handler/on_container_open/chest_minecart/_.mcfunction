#> inv_gui:core/handler/on_container_open/chest_minecart/_
#
# Called when a Chest Minecart is opened.
#
# @within function inv_gui:core/emitter/check_container_open/chest_minecart

# Write open container type to OhMyDat storage
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.CurrentMenuType set value "Minecart"


## Set the isInCallback flag.
    function inv_gui:core/common/is_in_callback/set

## Search for opened chest minecart
    function inv_gui:core/handler/on_container_open/chest_minecart/filter/find


# Callback: dispatch event to listener.
    function #inv_gui:datahandler/on_open/chest_minecart


## Remove InvGui.Target tag
    function inv_gui:core/common/gui_target/reset

## Clear the isInCallback flag.
    function inv_gui:core/common/is_in_callback/reset
