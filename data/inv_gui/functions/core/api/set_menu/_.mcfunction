#> inv_gui:core/api/set_menu/_
#
# @input
#   storage inv_gui: in
#       id: any
#
# @within function inv_gui:api/set_menu

## pre
    function inv_gui:core/common/api/set_menu/pre


# Açık olan konteyner tipine göre işlem yolu seçer.
    function #oh_my_dat:please
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui{CurrentMenuType:"Minecart"} run function inv_gui:core/api/set_menu/chest_minecart
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].InvGui{CurrentMenuType:"EnderChest"} run function inv_gui:core/api/set_menu/ender_chest

# Geçici veriyi temizle.
    data remove storage inv_gui: in


## post
    function inv_gui:core/common/api/set_menu/post
