#> inv_gui:core/handler/on_container_open/ender_chest/_
#
# Called when an Ender Chest is opened.
#
# @within function inv_gui:core/emitter/check_container_open/ender_chest

# Write open container type to OhMyDat storage
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.CurrentMenuType set value "EnderChest"


## Set the isInCallback flag.
    function inv_gui:core/common/is_in_callback/set


# Callback: dispatch event to listener.
    function #inv_gui:datahandler/on_open/ender_chest


## Clear the isInCallback flag.
    function inv_gui:core/common/is_in_callback/reset
