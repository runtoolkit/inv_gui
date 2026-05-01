#> inv_gui:core/api/build/ender_chest/_
#
# @input
#   storage inv_gui:data in
#       id: any
#       contents: (string[] @ 9)[] @ 3
#
# @within function inv_gui:api/build/ender_chest

## pre
    function inv_gui:core/common/api/build/pre


# Create the menu
    function inv_gui:core/common/api/build/create_menu/_


## post
    function inv_gui:core/common/api/build/post


# Write menu info to OhMyDat storage
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.MenuId set from storage inv_gui:data in.id
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui.Contents set from block 10000 2 10000 Items

# Set the menu
    function inv_gui:core/api/build/ender_chest/set_menu


# Closes the menu session; clears temporary container slots and storage data.
    function inv_gui:core/common/api/build/close_session

# Clean up temporary data.
    data remove storage inv_gui:data in
